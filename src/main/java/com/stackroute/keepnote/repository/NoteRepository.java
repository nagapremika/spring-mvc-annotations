package com.stackroute.keepnote.repository;

import com.stackroute.keepnote.model.Note;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/*
 * This class contains the code for data storage interactions and methods 
 * of this class will be used by other parts of the applications such
 * as Controllers and Test Cases
 * */
@Component
public class NoteRepository {

	/* Declare a variable called "list" to store all the notes. */
	private List<Note> list;

	public NoteRepository() {

		list = new ArrayList<Note>();
		/* Initialize the variable using proper data type */

	}

	/* This method should return all the notes in the list */

	public List<Note> getList() {
		return list;
	}

	/* This method should set the list variable with new list of notes */

	public void setList(List<Note> list) {
		this.list = list;
	}

	/*
	 * This method should Note object as argument and add the new note object into
	 * list
	 */

	public void addNote(Note note) {
		list.add(note);

	}

	/* This method should deleted a specified note from the list */

	public boolean deleteNote(int noteId) {
		/* Use list iterator to find matching note id and remove it from the list */
		return list.removeIf(x->x.getNoteId()==noteId);


	}

	/* This method should return the list of notes */

	public List<Note> getAllNotes() {
		return list;
	}

	/*
	 * This method should check if the matching note id present in the list or not.
	 * Return true if note id exists in the list or return false if note id does not
	 * exists in the list
	 */

	public boolean exists(int noteId) {
		return list.stream().anyMatch(x -> x.getNoteId() == noteId);
	}
}