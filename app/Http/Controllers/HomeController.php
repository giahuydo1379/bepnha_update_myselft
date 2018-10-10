<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    public function index(Request $request) {

        $result = array('status'=>'');
        $limit = $request->input('limit', 10);
        $uid = $request->input('uid');

        $tags = DB::table('tags')
            ->Leftjoin('tag_items', 'tag_items.tag_id', '=', 'tags.id')
            ->where('tags.disable', '=', 0)
            ->select('tags.title', 'tags.id')
            ->orderBy('tags.order_by')
            ->orderBy('tags.updated_by')
            ->distinct()->get();



        $image = DB::raw('concat("'.env('MEDIA_URL_IMAGE').'/",videos.image_location) as image');
        $imageDocument = DB::raw('concat("'.env('MEDIA_URL_IMAGE').'/",documents.image_location) as imageDoc');
        $video = DB::raw('concat("'.env('MEDIA_URL_VIDEO').'/",videos.video_location) as video');
        $days = DB::raw("videos.date_created as days");
        $dayDocument = DB::raw("documents.date_created as dayDoc");
        $liked = DB::raw('notebook.video_id IS NOT NULL as liked');
        $likedDocument = DB::raw('notebook_document.document_id IS NOT NULL as likedDoc');

        try {
            if(count($tags) > 0) {
                foreach($tags as $item) {
                    $data_item = DB::table('tag_video')
                        ->leftJoin('videos', 'tag_video.video_id', '=', 'videos.id', 'videos.disable', '=', 0)
                        ->leftJoin('notebook', 'videos.id', '=', 'notebook.video_id', 'and', 'notebook.user_id', '=', $uid)
                        ->select('tag_video.tag_id', 'videos.id', 'videos.name', $image,
                            $video, 'videos.description', 'videos.chef',
                            'videos.ingredients', 'videos.ingredients_2','videos.steps', 'videos.duration', 'videos.time_to_done',
                            'videos.level', 'videos.note', $days, 'videos.video_type_id as kind ', 'videos.view_count', $liked)
                        ->where('tag_video.tag_id', $item->tag_id)
                        ->where('disable','<>',1)
                        ->orderby('videos.date_created', 'desc')
                        ->distinct()
                        ->take($limit)
                        ->get();

                    $item->video = $data_item;


                }

                foreach($tags as $item) {
                    $data_item = DB::table('tag_document')
                        ->leftJoin('documents', 'tag_document.document_id', '=', 'documents.id', 'documents.disable', '=', 0)
                        ->leftJoin('notebook_document', 'documents.id', '=', 'notebook_document.document_id', 'and', 'notebook_document.user_id', '=', $uid)
                        ->select('tag_document.tag_id', 'documents.id', 'documents.title', $imageDocument,
                            'documents.chef',
                            'documents.time_to_done',
                            'documents.level',  $dayDocument,  'documents.view_count', $likedDocument)
                        ->where('tag_document.tag_id', $item->tag_id)
                        ->where('disable','<>',1)
                        ->orderby('documents.date_created', 'desc')
                        ->distinct()
                        ->take($limit)
                        ->get();

                    $item->document = $data_item;


                }

                $data = array();
                Carbon::setLocale('vi');
                foreach ($tags as $value) {
                    if(count($value->video)>0){
                        foreach ($value->video as $item){
                            $item->days = Carbon::createFromTimeStamp(strtotime($item->days))->diffForHumans();
                            $notebook = DB::table('notebook')->where('video_id',$item->id)->get();
                            if(isset($notebook) && count($notebook)>0){
                                foreach ($notebook as $value){
                                    if( $value->user_id == $uid){
                                        $item->liked = 1;
                                        break;
                                    }else{
                                        $item->liked = 0;
                                    }
                                }
                            }else{
                                $item->liked = 0;
                            }
                        }
                    }
                }
                foreach ($tags as $value) {
                    if(count($value->document)>0){
                        foreach ($value->document as $item){
                            $item->dayDoc = Carbon::createFromTimeStamp(strtotime($item->dayDoc))->diffForHumans();
                            $notebook = DB::table('notebook_document')->where('document_id',$item->id)->get();
                            if(isset($notebook) && count($notebook)>0){
                                foreach ($notebook as $value){
                                    if( $value->user_id == $uid){
                                        $item->likedDoc = 1;
                                        break;
                                    }else{
                                        $item->likedDoc = 0;
                                    }
                                }
                            }else{
                                $item->likedDoc = 0;
                            }
                        }
                    }
                }

                $result['data'] = $tags;
            }
            else
                $result['data'] = null;

            $result['status'] = 200;
        } catch(QueryException $e) {
            $result['status'] = $e->getCode();
            $result['errMsg'] = $e->getMessage();
        }
        return $result;

    }
}
