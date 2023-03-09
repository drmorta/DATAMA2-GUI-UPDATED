<?php
require_once('../../config.php');
if(isset($_GET['Manga_ISBN']) && $_GET['Manga_ISBN'] > 0){
    $qry = $conn->query("SELECT * from `manga` where Manga_ISBN = '{$_GET['Manga_ISBN']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=stripslashes($v);
        }
    }
}
?>
<style>
    #uni_modal .modal-footer{
        display:none
    }
</style>
<div class="container fluid">
    <callout class="callout-primary">
        <dl class="row">
            <dt class="col-md-4">Manga Name</dt>
            <dd class="col-md-8">: <?php echo $Manga_Name ?></dd>
            <dt class="col-md-4">Description</dt>
            <dd class="col-md-8">: <?php echo $Manga_Desc ?></dd>
            <dt class="col-md-4">Manga Author</dt>
            <dd class="col-md-8">: <?php echo $Manga_Author ?></dd>
            <dt class="col-md-4">Manga Genre</dt>
            <dd class="col-md-8">: <?php echo $Manga_Genre ?></dd>
            <dt class="col-md-4">Manga Price</dt>
            <dd class="col-md-8">: <?php echo $Manga_Price ?></dd>
            </dd>
        </dl>
    </callout>
    <div class="row px-2 justify-content-end">
        <div class="col-1">
            <button class="btn btn-dark btn-flat btn-sm" type="button" data-dismiss="modal">Close</button>
        </div>
    </div>
</div>