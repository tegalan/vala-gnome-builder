public class Gkbbi.HeaderBar : Gtk.HeaderBar {
    private Gtk.Entry search;
    private Gtk.Button search_button;

    construct {
        show_close_button = true;

        // Search Widget
        search = new Gtk.Entry();
        search.placeholder_text = "Search keyword...";
        search.expand = true;

        // Default Widget
        search_button = new Gtk.Button.from_icon_name("system-search-symbolic");
        search_button.clicked.connect(() => {
            if (this.title == null) {
                stdout.printf("should hide search\n");
                this.hide_search();
            } else {
                stdout.printf("should show search\n");
                this.show_search();
            }
        });

        this.pack_start(search_button);
        // Show default State
        this.show_search();
    }

    public void show_search() {
        this.set_custom_title(search);
        this.title = null;
        this.subtitle = null;

    }

    public void hide_search() {
        this.set_custom_title(null);
        this.title = "GKBBI";
        this.subtitle = "Lorem ipsum dolor...";
    }


}
