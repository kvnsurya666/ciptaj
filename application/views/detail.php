<link rel="stylesheet" href="<?= base_url('assets/css/frontend.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/css/frontend.min.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/css/global.css') ?>">
<link rel="stylesheet" id="google-fonts-1-css" href="https://fonts.googleapis.com/css?family=Quicksand%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CComfortaa%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&amp;ver=4.9.8" type="text/css" media="all">
<div class="ads-grid_shop">
	<div class="shop_inner_inf">
		<div class="col-md-4 single-right-left ">
			<div class="grid images_3_of_2">
				<div class="flexslider">
					<div class="clearfix"></div>
					<ul class="slides" style="width: 2000%; transition-duration: 0.6s; transform: translate3d(-3331.2px, 0px, 0px);">
						<li data-thumb="<?= base_url('assets/img/barang/' . kategori_help($detail['nama_kategori']) . '/' . $detail['gambar']) ?>" class="clone" aria-hidden="true" style="width: 416.4px; float: left; display: block;">
							<div class="thumb-image"> <img src="<?= base_url('assets/img/barang/' . kategori_help($detail['nama_kategori']) . '/' . $detail['gambar']) ?>" data-imagezoom="true" class="img-responsive" draggable="false"></div>
						</li>
					</ul>
					<ul class="flex-direction-nav">
						<li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li>
						<li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li>
					</ul>
				</div>
			</div>
			<div class="space" style="display: none">
			</div>
		</div>
		<div class="col-md-8 single-right-left simpleCart_shelfItem mb-3">
			<h3><?= $detail['nama_barang'] ?></h3>
			<br>
			<div class="elementor-widget-button">
				<a id="linkwa" href="https://wa.me/6285232777499?text=Apakah+stok+dengan+nama+produk+%2A<?= $detail['nama_barang'] ?>%2A+tersedia+%3F" target="blank" class="elementor-button elementor-size-sm" role="button">
					<i class="fa fa-whatsapp bold" aria-hidden="true"></i>
					<span>Tanya Dulu Disini</span>
				</a>
			</div>

			</a>
		</div>
		<div class="clearfix"> </div>
		<div class="responsive_tabs">
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab">Deskripsi</li>

				</ul>

			</div>

			<div class="resp-tabs-container">
				<h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Deskripsi</h2>
				<div class="tab1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">

					<div class="single_page">
						<p> <?= $detail['deskripsi']  ?> </p>


					</div>
				</div>

			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
</div>