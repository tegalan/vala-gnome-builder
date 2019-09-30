public class Gkbbi.Stack.WordDetail : Gtk.Box {
    public Gkbbi.Window window {get; construct;}

    public WordDetail(Gkbbi.Window w) {
        Object(
            orientation: Gtk.Orientation.VERTICAL,
            spacing: 0,
            window: w
        );
    }

    construct {
        var label = new Gtk.Label("Hello Detail");
        var button = new Gtk.Button.with_label("Go Back");
        button.clicked.connect(() => {
          stdout.printf("Go back\n");
          window.stacks.visible_child_name = "wordlist";
        });

        this.add(label);
        this.add(button);
    }
}
