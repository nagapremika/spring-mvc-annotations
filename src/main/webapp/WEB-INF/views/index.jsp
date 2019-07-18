
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="com.stackroute.keepnote.model.Note" %>
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<form action="saveNote"  method="POST">
	NoteId <input type="text" name="noteId" required/>
	Title  <input type="text" name="noteTitle" required/>
	Content<input type="textarea" name="noteContent" required/>
	Status <input type="text" name="noteStatus" required/>
<input type="submit" name="submit" />
	</form>

	<table border="2" width="50%" >
	<tbody>
	<tr>
<thead>
                                <th>noteId</th>
                                <th>title</th>
                                <th>content</th>
                                <th>status</th>
                                <th>createdDate</th>
                                </thead>
                            </tr>
                            <c:forEach var="note" items="${notes}" varStatus="status">
                            <tr>

<td>${note.noteId}</td>
<td>${note.noteTitle}</td>
<td>${note.noteContent}</td>
<td>${note.noteStatus}</td>
<td>${note.createdAt}</td>
                    </tr>
                             </c:forEach>
</tbody>
                        </table>

</body>
</html>