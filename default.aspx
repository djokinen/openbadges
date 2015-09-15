<%@ Page Title="Issuer" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="default.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" runat="Server">

	<h1>Issuer Organization</h1>

	<fieldset>

		<legend style="display: none;">Issuer</legend>

		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text" id="textName" required="required" runat="server" />
			<label class="mdl-textfield__label" for="textName">Issuer Name</label>
		</div>

		<br />

		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" id="textUrl" required="required" runat="server" type="url" />
			<label class="mdl-textfield__label" for="textUrl">Url</label>
		</div>

		<br />

		<div class="mdl-textfield mdl-js-textfield">
			<textarea class="mdl-textfield__input" type="text" rows="3" id="textDescription" runat="server"></textarea>
			<label class="mdl-textfield__label" for="textDescription">Description</label>
		</div>

		<br />

		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" id="textImage" runat="server" type="url" />
			<label class="mdl-textfield__label" for="textImage">Image Url</label>
		</div>

		<br />

		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" id="textEmail" runat="server" type="email" />
			<label class="mdl-textfield__label" for="textEmail">Email</label>
		</div>

		<br />

		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" id="textRevocationList" runat="server" type="url" readonly="readonly" />
			<label class="mdl-textfield__label" for="textRevocationList">Revocation url</label>
		</div>

		<br />

		<div>
			<!-- Accent-colored raised button with ripple -->
			<button id="buttonSave" runat="server" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">save</button>
			<button id="buttonCancel" runat="server" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">cancel</button>
		</div>

	</fieldset>

	<h2>parameter descriptions</h2>
	<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable">
		<thead>
			<tr>
				<th class="mdl-data-table__cell--non-numeric">Property</th>
				<th>Expected Type</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="mdl-data-table__cell--non-numeric"><strong>name</strong></td>
				<td>Text</td>
				<td>The name of the issuing organization.</td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric"><strong>url</strong></td>
				<td>URL</td>
				<td>URL of the institution</td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric">description</td>
				<td>Text</td>
				<td>A short description of the institution</td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric">image</td>
				<td><a href="http://en.wikipedia.org/wiki/Data_URI_scheme">Data URL</a> or URL</td>
				<td>An image representing the institution</td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric">email</td>
				<td>Text</td>
				<td>Contact address for someone at the organization.</td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric">revocationList</td>
				<td>URL</td>
				<td>URL of the Badge Revocation List. The endpoint should be a JSON representation of an object where the keys are the <strong>uid</strong> a revoked badge assertion, and the values are the reason for revocation. This is only necessary for signed badges.</td>
			</tr>
		</tbody>
	</table>

	<h2>json file format</h2>
	<pre>
{
	"name": "issuing organization",
	"url": "URL of the institution",
	"description": "A short description of the institution",
	"image": "An image URL representing the institution",
	"email": "Contact address for someone at the organization",
	"revocationList": "URL of the Badge Revocation json List."
}
		</pre>

</asp:Content>
