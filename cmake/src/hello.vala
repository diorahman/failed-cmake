class HelloApp : Gtk.Application  {
  public HelloApp() {
  }
  public override void activate() {
    var window = new Gtk.ApplicationWindow(this);
    window.set_default_size(400, 400);
    var vbox = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
    var webView = new WebKit.WebView();
    vbox.pack_start(webView, true, true);
    window.add(vbox);
    webView.load_uri("http://google.com");
    window.show_all();
  }
  public static int main(string[] args) {
    return new HelloApp().run(args);
  } 
}
