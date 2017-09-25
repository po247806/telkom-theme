<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
<script src="${javascript_folder}/moment.min.js"></script>
<script src="${javascript_folder}/analyticsinit.js"></script>

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header  id="banner" role="banner"> <!-- class="container-fluid-1280"  -->
		<div class="row">
			<div class="navbar-header" id="heading">
			
			<a href="${site_default_url}"><img class="imgLogo" src="${images_folder}/logo.png" alt="Telkom Portal"></a>
			
				<!-- <a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="64" src="${site_logo}" width="64" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>  -->

				<#if is_setup_complete>
					<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>
					</button>
					
				
					<div class="pull-right user-personal-bar topRightPanel">
						<div class="signPanel">
							<@liferay.user_personal_bar /></div>
						
						<div class = "langPanel"><@liferay_portlet["runtime"] defaultPreferences=default_preferences portletProviderAction=portletProviderAction.VIEW portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"/>
						</div>
					</div>
				</#if>
			</div>

			<#include "${full_templates_path}/navigation.ftl" />
			<!--<div class="noVisitor clrboth"> Total Visitors : 58732 </div> -->
			<div class="noVisitor clrboth" style="display:none;">Total Visitors : 
			<span class="noVisitorValue"></span>
			</div>

		</div>
	</header>

	<section class="" id="content">
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