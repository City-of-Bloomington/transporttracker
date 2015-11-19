<?xml version="1.0" encoding="UTF-8" ?>
<!--
 * @copyright Copyright (C) 2014-2015 City of Bloomington, Indiana. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.txt
 * @author W. Sibo <sibow@bloomington.in.gov>
 *
	-->
<%@  include file="header.jsp" %>
<h1><s:property value="%{project.name}" /></h1>
<s:if test="hasActionErrors()">
	<div class="errors">
    <s:actionerror/>
	</div>
</s:if>
<s:elseif test="hasActionMessages()">
	<div class="welcome">
    <s:actionmessage/>
	</div>
</s:elseif>
	<!--
	<dt>Project ID</dt>
	<dd><s:property value="project.id" /></dd>
	-->
	<p><s:property value="%{project.description}" /></p>
<div class="tt-row-container">
	<div class="tt-split-container">
		<dl class="fn1-output-field">
			<dt>Project Owner</dt>
			<dd><s:property value="%{project.owner}" /></dd>
		</dl>
	</div>
	<div class="tt-split-container">
		<dl class="fn1-output-field">
			<dt>Project Type</dt>
			<dd><s:property value="%{project.type}" /></dd>
		</dl>
	</div>
</div>

<div class="tt-row-container">
	<div class="tt-split-container">
		<dl class="fn1-output-field">
			<dt>New/Improved Features</dt>
			<dd><s:property value="%{project.allFeaturesText}" /></dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Funding Source</dt>
			<dd><s:property value="%{project.funding_source}" /></dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>PM Lead</dt>
			<dd><s:property value="%{project.lead}" /></dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Eng Lead</dt>
			<dd><s:property value="%{project.eng_lead}" /></dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Length </dt>
			<dd><s:property value="%{project.length}" /> </dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>File Folder Path </dt>
			<dd><s:property value="%{project.file_path}" /> </dd>
		</dl>
	</div>
	<div class="tt-split-container">
		<dl class="fn1-output-field">
			<dt>DES No.</dt>
			<dd><s:property value="%{project.des_no}" /> </dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Created Date</dt>
			<dd><s:property value="%{project.date}" /> </dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Est. End Date</dt>
			<dd><s:property value="%{project.est_end_date}" /> </dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Actual End Date</dt>
			<dd><s:property value="%{project.actual_end_date}" /> </dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Est. Cost</dt>
			<dd>$<s:property value="%{project.est_cost}" /> </dd>
		</dl>
		<dl class="fn1-output-field">
			<dt>Actual Cost</dt>
			<dd>$<s:property value="%{project.actual_cost}" /> </dd>
		</dl>
	</div>
</div>

	<s:if test="project.canHaveMoreUpdates()">
		<a href="<s:property value='#application.url' />project.action?id=<s:property value='project.id' />&action=Edit" class="fn1-btn">Edit Project</a>

		<a href="<s:property value='#application.url' />projectUpdate.action?project_id=<s:property value='project.id' />" class="fn1-btn">Add Project Updates </a>
	</s:if>

<s:if test="updates.size() > 0">
	<s:set var="updates" value="updates" />
	<s:set var="showProject" value="false" />
	<s:set var="updatesTitle" value="updatesTitle" />
	<%@  include file="updates.jsp" %>
</s:if>


<%@  include file="footer.jsp" %>
