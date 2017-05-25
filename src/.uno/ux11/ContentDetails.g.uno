[Uno.Compiler.UxGenerated]
public partial class ContentDetails: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<string> temp_Url_inst;
    global::Uno.UX.Property<string> BackgroundImage_Url_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<string> temp2_Value_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    internal global::Fuse.Controls.Image BackgroundImage;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb0",
        "BackgroundImage"
    };
    static ContentDetails()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ContentDetails(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp3 = new global::Fuse.Reactive.Data("CloseDetails");
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp4 = "http://127.0.0.1:9000/images/";
        var temp5 = new global::Fuse.Reactive.Constant(temp4);
        var temp6 = new global::Fuse.Reactive.Data("Image");
        var temp = new global::Fuse.Controls.Image();
        temp_Url_inst = new App_FuseControlsImage_Url_Property(temp, __selector0);
        var temp7 = new global::Fuse.Reactive.Add(temp5, temp6);
        var temp8 = "http://127.0.0.1:9000/images/";
        var temp9 = new global::Fuse.Reactive.Constant(temp8);
        var temp10 = new global::Fuse.Reactive.Data("Hero");
        BackgroundImage = new global::Fuse.Controls.Image();
        BackgroundImage_Url_inst = new App_FuseControlsImage_Url_Property(BackgroundImage, __selector0);
        var temp11 = new global::Fuse.Reactive.Add(temp9, temp10);
        var temp1 = new global::Fuse.Controls.Text();
        temp1_Value_inst = new App_FuseControlsTextControl_Value_Property(temp1, __selector1);
        var temp12 = new global::Fuse.Reactive.Data("Title");
        var temp2 = new global::Fuse.Controls.Text();
        temp2_Value_inst = new App_FuseControlsTextControl_Value_Property(temp2, __selector1);
        var temp13 = new global::Fuse.Reactive.Data("Description");
        var temp14 = new global::Fuse.Android.StatusBarConfig();
        var temp15 = new global::Fuse.Controls.Image();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp3, __g_nametable);
        var temp16 = new global::Fuse.Controls.StackPanel();
        var temp17 = new global::Fuse.Controls.DockPanel();
        var temp18 = new global::Fuse.Controls.StatusBarBackground();
        var temp19 = new global::Fuse.Controls.Image();
        var temp20 = new global::Fuse.Reactive.DataBinding(temp_Url_inst, temp7, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp21 = new global::Fuse.Controls.StackPanel();
        var temp22 = new global::Fuse.Reactive.DataBinding(BackgroundImage_Url_inst, temp11, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp23 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp12, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp24 = new global::Fuse.Reactive.DataBinding(temp2_Value_inst, temp13, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp25 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp26 = new global::Fuse.Drawing.StaticSolidColor(float4(0.06666667f, 0.06666667f, 0.07843138f, 1f));
        temp14.IsVisible = true;
        temp15.Width = new Uno.UX.Size(24f, Uno.UX.Unit.Unspecified);
        temp15.X = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp15.Y = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp15.Opacity = 0.5f;
        global::Fuse.Gestures.Clicked.AddHandler(temp15, temp_eb0.OnEvent);
        temp15.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Images/prev@2x.png"));
        temp15.Bindings.Add(temp_eb0);
        temp16.Children.Add(temp17);
        temp16.Children.Add(temp19);
        temp16.Children.Add(temp);
        temp17.Children.Add(temp18);
        temp18.Opacity = 0f;
        global::Fuse.Controls.DockPanel.SetDock(temp18, Fuse.Layouts.Dock.Top);
        temp19.Width = new Uno.UX.Size(56f, Uno.UX.Unit.Unspecified);
        temp19.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp19.Margin = float4(0f, 0f, 10f, 0f);
        temp19.Y = new Uno.UX.Size(28f, Uno.UX.Unit.Unspecified);
        temp19.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../images/play.png"));
        global::Fuse.Controls.LayoutControl.SetLayoutMaster(temp19, BackgroundImage);
        temp.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Unspecified);
        temp.Alignment = Fuse.Elements.Alignment.BottomLeft;
        temp.Margin = float4(10f, 0f, 0f, 0f);
        temp.Y = new Uno.UX.Size(85f, Uno.UX.Unit.Unspecified);
        global::Fuse.Controls.LayoutControl.SetLayoutMaster(temp, BackgroundImage);
        temp.Bindings.Add(temp20);
        temp21.Children.Add(BackgroundImage);
        temp21.Children.Add(temp1);
        temp21.Children.Add(temp2);
        BackgroundImage.Alignment = Fuse.Elements.Alignment.Top;
        BackgroundImage.Margin = float4(0f, 0f, 0f, 100f);
        BackgroundImage.Opacity = 0.75f;
        BackgroundImage.Name = __selector2;
        BackgroundImage.Bindings.Add(temp22);
        temp1.TextWrapping = Fuse.Controls.TextWrapping.Wrap;
        temp1.TextAlignment = Fuse.Controls.TextAlignment.Left;
        temp1.Color = Fuse.Drawing.Colors.White;
        temp1.Margin = float4(10f, 0f, 10f, 10f);
        temp1.Bindings.Add(temp23);
        temp2.TextWrapping = Fuse.Controls.TextWrapping.Wrap;
        temp2.Margin = float4(10f, 0f, 10f, 0f);
        temp2.Bindings.Add(temp24);
        temp25.LineNumber = 25;
        temp25.FileName = "Pages/ContentDetails.ux";
        temp25.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Pages/ContentDetails.js"));
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb0);
        __g_nametable.Objects.Add(BackgroundImage);
        this.Background = temp26;
        this.Children.Add(temp14);
        this.Children.Add(temp15);
        this.Children.Add(temp16);
        this.Children.Add(temp21);
        this.Children.Add(temp25);
    }
    static global::Uno.UX.Selector __selector0 = "Url";
    static global::Uno.UX.Selector __selector1 = "Value";
    static global::Uno.UX.Selector __selector2 = "BackgroundImage";
}
