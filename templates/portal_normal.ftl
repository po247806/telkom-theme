<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

<meta content="initial-scale=1.0, width=device-width" name="viewport" />
<link rel="Shortcut Icon" href="${images_folder}/fevicon.ico">	

	<@liferay_util["include"] page=top_head_include />
	
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />


<#if is_signed_in>
 <#assign roles = user.getRoles() 
          showcontrolmenu = false
    />
   <#list roles as role>
         <#if role.getName() == "Administrator" || role.getName() == "Other Role" >
                   <#assign showcontrolmenu = true />
                   <#break>
        </#if>             
    </#list> 
    <#if showcontrolmenu>
       <@liferay.control_menu />
   
	<#else>
		<style> .has-control-menu #wrapper {margin:0 !important;padding:0 !important;} </style>
	</#if>
</#if>

<div id="wrapper">
	<header  id="banner" role="banner"> <!-- class="container-fluid-1280"  -->
		<div class="row">
			<div class="navbar-header headSec left" id="heading">
				<div class="Telkomlogo left">
					<a href="${site_default_url}"><img class="imgLogo" src="${images_folder}/Telkom-Tera-09.jpg" alt="Telkom Portal"></a>
				</div>
				
				
				<div class="clearfix"></div>
			</div>
			<#if is_setup_complete>
					<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>
					</button>
				</#if>	
			<div class="headSec right navrightsection">
				<div class="loginright navbar-right" >
					<div class="signPanel navbar-right signinmargin">
						<@liferay.user_personal_bar />
							<div class="clearfix"></div>
							<div class="datarecorddiv">
								<ul class="datarecord">
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/my-profile">My Account</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/my-order">My Order</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/my-saved-cards">My Saved Cards</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/my-bookmark">My Bookmark</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/my-profile">My Profile</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/update-profile">Update Profile</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/key-managment">Key Managment</a>
									</li>									
									<li class="profilelist">
										<a class="profilelink" href="${site_default_private_url}/update-password">Change Passwword</a>
									</li>
									<li class="profilelist">
										<a class="profilelink" href="${sign_out_url}">Sign out</a>
									</li>
								</ul>
							</div>
					</div>
					<div class = "langPanel navbar-right">
						<@liferay_portlet["runtime"] defaultPreferences=default_preferences portletProviderAction=portletProviderAction.VIEW portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"/>
					</div>
				</div>
				
				<#include "${full_templates_path}/navigation.ftl" />
				
			</div>			

		</div>
		
		
	</header>
<#if layout.getFriendlyURL()=="/home" >              
	
	<#--Comments : for all back button click getURLCurrent() is having p_p_state=normal and for each pageclick it's having p_p_state=maximized&p_p_mode=view-->
	
	<#if themeDisplay.getURLCurrent()?contains("p_p_state=maximized&p_p_mode=view")>
									<#-- Nothing to do in this case …carousel will not be displayed-->
	<#else>
		<div class="home_carousel">                     
			<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
			<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
			<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", "32115") />
			<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", "32535") />

			<@liferay_portlet["runtime"]
			defaultPreferences="${freeMarkerPortletPreferences}"
			portletProviderAction=portletProviderAction.VIEW
			instanceId="footercontent"
			portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />                                
		</div>
	</#if>                     
</#if>    
<#--If of Home ends -->


	<section class="container-fluid midSection" id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
	

	 <!-- Header -->
    <div class="pagesection1">
		
	</div>
 
</section>

<#include "${full_templates_path}/footer.ftl" />

	
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>