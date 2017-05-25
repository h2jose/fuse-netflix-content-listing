[Uno.Compiler.UxGenerated]
public partial class ContentList: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly ContentList __parent;
        [Uno.WeakReference] internal readonly ContentList __parentInstance;
        public Template(ContentList parent, ContentList parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        [Uno.Compiler.UxGenerated]
        public partial class Template1: Uno.UX.Template
        {
            [Uno.WeakReference] internal readonly Template __parent;
            [Uno.WeakReference] internal readonly Fuse.Controls.Panel __parentInstance;
            public Template1(Template parent, Fuse.Controls.Panel parentInstance): base(null, false)
            {
                __parent = parent;
                __parentInstance = parentInstance;
            }
            global::Uno.UX.Property<string> temp_Url_inst;
            internal global::Fuse.Reactive.EventBinding temp_eb1;
            global::Uno.UX.NameTable __g_nametable;
            static string[] __g_static_nametable = new string[] {
                "temp_eb1"
            };
            static Template1()
            {
            }
            public override object New()
            {
                var __self = new global::Fuse.Controls.Rectangle();
                var temp1 = "http://127.0.0.1:9000/images/";
                var temp2 = new global::Fuse.Reactive.Constant(temp1);
                var temp3 = new global::Fuse.Reactive.Data("image");
                var temp = new global::Fuse.Controls.Image();
                temp_Url_inst = new App_FuseControlsImage_Url_Property(temp, __selector0);
                var temp4 = new global::Fuse.Reactive.Add(temp2, temp3);
                __g_nametable = new global::Uno.UX.NameTable(__parent.__g_nametable, __g_static_nametable);
                var temp5 = new global::Fuse.Reactive.Data("OpenContentDetails");
                var temp6 = new global::Fuse.Reactive.DataBinding(temp_Url_inst, temp4, __g_nametable, Fuse.Reactive.BindingMode.Default);
                var temp_eb1 = new global::Fuse.Reactive.EventBinding(temp5, __g_nametable);
                __self.Width = new Uno.UX.Size(103f, Uno.UX.Unit.Unspecified);
                __self.Height = new Uno.UX.Size(140f, Uno.UX.Unit.Unspecified);
                __self.Margin = float4(0f, 0f, 10f, 0f);
                global::Fuse.Gestures.Clicked.AddHandler(__self, temp_eb1.OnEvent);
                temp.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
                temp.Width = new Uno.UX.Size(103f, Uno.UX.Unit.Unspecified);
                temp.Height = new Uno.UX.Size(140f, Uno.UX.Unit.Unspecified);
                temp.Bindings.Add(temp6);
                __g_nametable.Objects.Add(temp_eb1);
                __self.Background = Fuse.Drawing.Brushes.Black;
                __self.Children.Add(temp);
                __self.Bindings.Add(temp_eb1);
                return __self;
            }
            static global::Uno.UX.Selector __selector0 = "Url";
        }
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<object> temp1_Items_inst;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
        };
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Panel();
            var temp = new global::Fuse.Controls.Text();
            temp_Value_inst = new App_FuseControlsTextControl_Value_Property(temp, __selector0);
            var temp2 = new global::Fuse.Reactive.Data("title");
            __g_nametable = new global::Uno.UX.NameTable(__parent.__g_nametable, __g_static_nametable);
            var temp1 = new global::Fuse.Reactive.Each();
            temp1_Items_inst = new App_FuseReactiveEach_Items_Property(temp1, __selector1);
            var temp3 = new global::Fuse.Reactive.Data("objects");
            var temp4 = new global::Fuse.Controls.StackPanel();
            var temp5 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Default);
            var temp6 = new global::Fuse.Controls.ScrollView();
            var temp7 = new global::Fuse.Controls.StackPanel();
            var temp8 = new Template1(this, __self);
            var temp9 = new global::Fuse.Reactive.DataBinding(temp1_Items_inst, temp3, __g_nametable, Fuse.Reactive.BindingMode.Default);
            __self.Margin = float4(10f, 10f, 0f, 10f);
            temp4.Children.Add(temp);
            temp4.Children.Add(temp6);
            temp.FontSize = 18f;
            temp.Color = float4(1f, 1f, 1f, 1f);
            temp.Bindings.Add(temp5);
            temp6.AllowedScrollDirections = Fuse.Controls.ScrollDirections.Horizontal;
            temp6.Margin = float4(0f, 5f, 0f, 0f);
            temp6.Children.Add(temp7);
            temp7.Orientation = Fuse.Layouts.Orientation.Horizontal;
            temp7.Children.Add(temp1);
            temp1.Limit = 99;
            temp1.Templates.Add(temp8);
            temp1.Bindings.Add(temp9);
            __self.Children.Add(temp4);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
        static global::Uno.UX.Selector __selector1 = "Items";
    }
    global::Uno.UX.Property<object> EachVertical_Items_inst;
    internal global::Fuse.Reactive.Each EachVertical;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "EachVertical"
    };
    static ContentList()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ContentList(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Reactive.Data("Content");
        EachVertical = new global::Fuse.Reactive.Each();
        EachVertical_Items_inst = new App_FuseReactiveEach_Items_Property(EachVertical, __selector0);
        var temp1 = new global::Fuse.Reactive.Member(temp, "sections");
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp2 = new global::Fuse.Android.StatusBarConfig();
        var temp3 = new global::Fuse.Controls.DockPanel();
        var temp4 = new global::Fuse.Controls.DockPanel();
        var temp5 = new global::Fuse.Controls.StatusBarBackground();
        var temp6 = new global::Fuse.Controls.Text();
        var temp7 = new global::Fuse.Controls.ScrollView();
        var temp8 = new global::Fuse.Controls.StackPanel();
        var temp9 = new Template(this, this);
        var temp10 = new global::Fuse.Reactive.DataBinding(EachVertical_Items_inst, temp1, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp11 = new global::Fuse.Triggers.WhileScrollable();
        var temp12 = new global::Fuse.Drawing.StaticSolidColor(float4(0.1215686f, 0.1215686f, 0.145098f, 1f));
        var temp13 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp14 = new global::Fuse.Drawing.StaticSolidColor(float4(0.06666667f, 0.06666667f, 0.07843138f, 1f));
        global::Fuse.Controls.NavigationControl.SetTransition(this, Fuse.Controls.NavigationControlTransition.None);
        temp2.IsVisible = true;
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp7);
        temp4.Margin = float4(0f, 0f, 0f, 0f);
        global::Fuse.Controls.DockPanel.SetDock(temp4, Fuse.Layouts.Dock.Top);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp6);
        temp5.Opacity = 0f;
        global::Fuse.Controls.DockPanel.SetDock(temp5, Fuse.Layouts.Dock.Top);
        temp6.Value = "Some logo";
        temp6.FontSize = 20f;
        temp6.Color = float4(0.8f, 0.8f, 0.8f, 1f);
        temp6.Margin = float4(5f, 5f, 5f, 5f);
        temp7.AllowedScrollDirections = Fuse.Controls.ScrollDirections.Vertical;
        temp7.Margin = float4(0f, 0f, 0f, 0f);
        temp7.Padding = float4(0f, 5f, 0f, 20f);
        temp7.Background = temp12;
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp11);
        temp8.Alignment = Fuse.Elements.Alignment.Top;
        temp8.Children.Add(EachVertical);
        EachVertical.Name = __selector1;
        EachVertical.Templates.Add(temp9);
        EachVertical.Bindings.Add(temp10);
        temp11.ScrollDirections = Fuse.Controls.ScrollDirections.Down;
        temp11.Invert = true;
        temp13.LineNumber = 32;
        temp13.FileName = "Pages/ContentList.ux";
        temp13.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Pages/ContentList.js"));
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(EachVertical);
        this.Background = temp14;
        this.Children.Add(temp2);
        this.Children.Add(temp3);
        this.Children.Add(temp13);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
    static global::Uno.UX.Selector __selector1 = "EachVertical";
}
