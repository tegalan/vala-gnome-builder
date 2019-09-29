public class Gkbbi.Application : Gtk.Application {
    public Application () {
        Object(
            application_id: "id.sucipto.gkbbi",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        Window window = new Window(this);
        window.show_all();
    }

    public static int main(string[] args) {
        Application app = new Application();
        return app.run(args);
    }
}
