using Gtk;

public class Gkbbi.Stack.Wordlist : ScrolledWindow {
    private ListBox lists ;
    public Gtk.Stack stack {get;construct;}

    public Wordlist (Gtk.Stack s) {
        Object(stack: s);
    }

    construct {
        lists = new ListBox();
        //lists.
        for (var x = 1; x < 100; x++) {
            var row = new WordItem();
            lists.add(row);
            lists.add(new Separator(Orientation.VERTICAL));
        }

        this.add(lists);
    }
}

public class Gkbbi.Stack.WordItem : Gtk.ListBoxRow {
    construct {
        var vbox = new Box(Orientation.VERTICAL, 0);
        vbox.margin_top = 4;
        vbox.margin_bottom = 4;
        vbox.margin_start = 6;
        vbox.margin_end = 6;

        var title = new Label("Title");
        title.halign = Align.START;
        var subtitle = new Label("Subtitle");
        subtitle.halign = Align.START;

        vbox.add(title);
        vbox.add(subtitle);

        this.add(vbox);
        this.activatable = true;
        this.selectable = false;
        this.activate.connect(() => {
            stdout.printf("Clicked\n");
        });
    }
}
