<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>

<div aria-expanded="false" class="mobilepos collapse navbar-collapse" id="navigationCollapse">
	<#if has_navigation && is_setup_complete>
		<nav class="${nav_css_class} site-navigation" id="navigation" role="navigation" style="background-color:#000;">
			
			<div class="navbar-form navbar-right headerSecrch" role="search">
				<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
				
			</div>
			<div class="navbar-left headernavigation">
					<div class="navbar-left navigationlist">
						<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
					</div>
			</div>
			
			<!--<#if show_sign_in>
			<div class="navbar-left reg" id="p_p_id_com_liferay_product_navigation_user_personal_bar_web_portlet_ProductNavigationUserPersonalBarPortlet_"> 
			<span class="sign-up text-default" role="presentation"> 
			<a href="${site_default_url}?p_p_id=com_liferay_login_web_portlet_LoginPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&saveLastPath=false&_com_liferay_login_web_portlet_LoginPortlet_mvcRenderCommandName=%2Flogin%2Fcreate_account" class="sign-up text-default" data-redirect="false">Register</a> </span> 
			</div>
			</#if> -->
			<div class="clearfix"></div> 
		</nav>
	</#if>
	
	
</div>

<#assign VOID = freeMarkerPortletPreferences.reset()>