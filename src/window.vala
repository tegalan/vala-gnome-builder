/* window.vala
 *
 * Copyright 2019 Sucipto
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

public class Gkbbi.Window : Gtk.ApplicationWindow {
    public Gtk.Stack stacks;
    public HeaderBar header;

	public Window (Gtk.Application app) {
		Object (application: app);
	}

	construct {
	    header = new HeaderBar();

	    this.set_titlebar(header);
	    this.set_default_size (400, 450);
	    this.set_position(Gtk.WindowPosition.CENTER);

	    // Set Main Stack
	    stacks = new Gtk.Stack();
	    //stacks.add_named(new Gtk.Label("First stack"), "first");
	    stacks.add_named(new Stack.Wordlist(stacks), "wordlist");
	    stacks.add_named(new Stack.WordDetail(this), "worddetail");

	    this.add(stacks);
	}
}
