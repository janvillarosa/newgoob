<?php
class ControllerModulePavlandingpage extends Controller {
	private $error = array(); 
	 
	public function index() { 

		$this->language->load('module/pavlandingpage');
		$this->load->model('tool/image');
		$this->document->setTitle(strip_tags($this->language->get('heading_title')));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
		
			
			$this->request->post['pavlandingpage'][0]['banner_image'] = 	$this->request->post['banner_image'];
			unset($this->request->post['banner_image']);
			
	
			$this->model_setting_setting->editSetting('pavlandingpage', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('module/pavlandingpage', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = strip_tags($this->language->get('heading_title'));
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
 		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');			
				
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		
		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_width'] = $this->language->get('entry_width');
		$this->data['entry_height'] = $this->language->get('entry_height');
		
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);		
		$this->data['entry_show_image'] = $this->language->get( 'entry_show_image' );
		$this->data['entry_module_title'] = $this->language->get( 'entry_module_title' );
		$this->data['tab_module'] = $this->language->get('tab_module_banner');
		$this->data['entry_image_navigator'] = $this->language->get( 'entry_image_navigator' );
		$this->data['entry_navigator_width'] = $this->language->get( 'entry_navigator_width' );
		$this->data['entry_navigator_height'] = $this->language->get( 'entry_navigator_height' );
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/pavlandingpage', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/pavlandingpage', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['token'] = $this->session->data['token'];

		$this->data['modules'] = array();
		$this->data['positions'] = array( 'mainmenu',
										  'slideshow',
										  'promotion',
										  'content_top',
										  'column_left',
										  'column_right',
										  'content_bottom',
										  'mass_bottom',
										  'footer_top',
										  'footer_center',
										  'footer_bottom'
		);
		$themeConfig = $this->config->get( 'themecontrol' );
		if( isset($themeConfig['default_theme']) ){
			$layoutxml = DIR_CATALOG.'view/theme/'.$themeConfig['default_theme'].'/development/layout/default.php';
			if( file_exists($layoutxml) ){
				include( $layoutxml );
		 		$this->data['positions'] = PavoLayoutPositions::getList();
			}
		}	
		$d = array('layout_id'=>'','position'=>'','status'=>'','sort_order'=>'1',
		'banner_image'=>array(),'width'=>940,'height'=>350,
		'image_navigator' => 0,
		'navimg_height'   =>97,
		'navimg_weight'   =>177,
		'text_interval'=>8000,
		'mainimage' => '',
		'modthumb'  => '',
		'videoid'	=> ''
		);

		

		$this->data['effects'] = array('slideUp','slideDown','slideLeft',
					'slideRight','slideExpandUp','expandUp','fadeIn',
					'expandOpen','bigEntrance','hatch','bounce',
					'pulse','floating','tossing','pullUp','pullDown','stretchLeft','stretchRight'
					);
		if (isset($this->request->post['pavlandingpage'])) {
			$this->data['modules'] = $this->request->post['pavlandingpage'];
		} elseif ($this->config->get('pavlandingpage')) { 
			$this->data['modules'] = $this->config->get('pavlandingpage');
		}	
		if( !empty($this->data['modules']) ){
			 $d = array_merge($d,$this->data['modules'][0]);			
		}
		$this->data['module'] = $d;
		 
		$this->data['banner_image'] = $d['banner_image'];
		$this->load->model('design/layout');
		$this->data['layouts'][] = array('layout_id'=>99999, 'name' => $this->language->get('all_page') );
		
		$this->data['layouts'] = array_merge($this->data['layouts'],$this->model_design_layout->getLayouts());
		
		
		$this->load->model('localisation/language');
		
 
		$this->data['modthumb'] = $this->model_tool_image->resize($d['mainimage'], 100, 100); 
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		$this->document->addStyle('view/stylesheet/pavlandingpage.css');
		$this->template = 'module/pavlandingpage.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
		
	}
	
	public function typo(){

		if (isset($this->request->get['field'])) {
			$this->data['field'] = $this->request->get['field'];
		} else {
			$this->data['field'] = '';
		}
 
	 
	 	$typoFile = 	HTTP_CATALOG."catalog/view/theme/default/stylesheet/pavlandingpage.css";	
		if( file_exists( DIR_CATALOG ."view/theme/". $this->config->get('config_template')."/stylesheet/pavlandingpage.css" ) ){
			$typoFile = 	HTTP_CATALOG."catalog/view/theme/". $this->config->get('config_template')."/stylesheet/pavlandingpage.css";	
		}
		$content = file_get_contents(  $typoFile );

		$this->data['typoFile'] = $typoFile; 
		$data = preg_match_all("#\.pav-caption\.([\w\-]+)\s*{\s*#", $content, $matches);
	
	
		$this->data['captions'] = array();

		if( isset($matches[1]) ){
			$this->data['captions']  = $matches[1];
		}  	

		 
		$this->template = 'module/pavlandingpage_typo.tpl';
		$this->response->setOutput($this->render());
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavlandingpage')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if( !isset($this->request->post['banner_image']) ){
			$this->error['warning'] = $this->language->get('error_missing_banner');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>
