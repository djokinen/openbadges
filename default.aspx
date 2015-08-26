<%@ Page Title="Issuer" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="default.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" runat="Server">

	<h1>Issuer Organization</h1>

	<fieldset>
		<legend>Issuer</legend>
		<div>
			<label for="textName">Name</label>
			<input id="textName" placeholder="issuer name" required="required" runat="server" type="text" />
		</div>

		<div>
			<label for="textUrl">Url</label>
			<input id="textUrl" placeholder="issuer url" required="required" runat="server" type="url" />
		</div>

		<div>
			<label for="textDescription">Description</label>
			<textarea id="textDescription" placeholder="issuer description" runat="server"></textarea>
		</div>

		<div>
			<label for="textImage">Image Url</label>
			<input id="textImage" placeholder="image url" runat="server" type="url" />
		</div>

		<div>
			<label for="textEmail">Email</label>
			<input id="textEmail" placeholder="issuer email" runat="server" type="email" />
		</div>

		<div>
			<label for="textRevocationList">Revocation url</label>
			<input id="textRevocationList" placeholder="revocation list json file" runat="server" type="url" readonly="readonly" />
		</div>

		<div>
			<button id="buttonSave" runat="server">save</button>
			<button id="buttonCancel" runat="server">cancel</button>
		</div>

	</fieldset>

	<h2>parameter descriptions</h2>
	<table>
		<thead>
			<tr>
				<th>Property</th>
				<th>Expected Type</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><strong>name</strong></td>
				<td>Text</td>
				<td>The name of the issuing organization.</td>
			</tr>
			<tr>
				<td><strong>url</strong></td>
				<td>URL</td>
				<td>URL of the institution</td>
			</tr>
			<tr>
				<td>description</td>
				<td>Text</td>
				<td>A short description of the institution</td>
			</tr>
			<tr>
				<td>image</td>
				<td><a href="http://en.wikipedia.org/wiki/Data_URI_scheme">Data URL</a> or URL</td>
				<td>An image representing the institution</td>
			</tr>
			<tr>
				<td>email</td>
				<td>Text</td>
				<td>Contact address for someone at the organization.</td>
			</tr>
			<tr>
				<td>revocationList</td>
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
