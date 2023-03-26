using App22.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace App22.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}