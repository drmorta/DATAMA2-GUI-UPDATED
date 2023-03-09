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
    span.select2-selection.select2-selection--single {
        border-radius: 0;
        padding: 0.25rem 0.5rem;
        padding-top: 0.25rem;
        padding-right: 0.5rem;
        padding-bottom: 0.25rem;
        padding-left: 0.5rem;
        height: auto;
    }
</style>
<form action="" id="item-form">
     <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
    <div class="container-fluid">
        <div class="form-group">
            <label for="name" class="control-label">Manga Name</label>
            <input type="text" name="name" id="name" class="form-control rounded-0" value="<?php echo isset($Manga_Name) ? $Manga_Name :"" ?>" required>
        </div>
        <div class="form-group">
            <label for="name" class="control-label">Manga Author</label>
            <input type="text" name="name" id="name" class="form-control rounded-0" value="<?php echo isset($Manga_Author) ? $Manga_Author :"" ?>" required>
        </div>
        <div class="form-group">
            <label for="description" class="control-label">Manga Description</label>
            <textarea rows="3" name="description" id="description" class="form-control rounded-0" required><?php echo isset($Manga_Desc) ? $Manga_Desc :"" ?></textarea>
        </div>
        
    </div>
</form>
<script>
    $(function(){
        $('#item-form').submit(function(e){
			e.preventDefault();
            var _this = $(this)
			 $('.err-msg').remove();
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Master.php?f=save_item",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
				success:function(resp){
					if(typeof resp =='object' && resp.status == 'success'){
						location.reload();
					}else if(resp.status == 'failed' && !!resp.msg){
                        var el = $('<div>')
                            el.addClass("alert alert-danger err-msg").text(resp.msg)
                            _this.prepend(el)
                            el.show('slow')
                            $("html, body").animate({ scrollTop: 0 }, "fast");
                    }else{
						alert_toast("An error occured",'error');
                        console.log(resp)
					}
                    end_loader()
				}
			})
		})
	})
</script>