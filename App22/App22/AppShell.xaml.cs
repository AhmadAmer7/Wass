using App22.ViewModels;
using App22.Views;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace App22
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
            Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
        }

    }
}
