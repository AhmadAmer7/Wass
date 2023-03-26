using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using Java.Util.Logging;
using LiteDB;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using static Android.Provider.ContactsContract.CommonDataKinds;
using static Android.Renderscripts.Sampler;
using Logger = Java.Util.Logging.Logger;
using User = App22.Models.User;

namespace App22.ViewModels
{
    public class SignUpViewModel : BaseViewModel
    {
        private readonly string[] _genders = { "Male", "Female" };
        public IEnumerable<string> Genders => _genders;

        FirebaseClient firebaseClient = new Firebase.Database.FirebaseClient("https://wassilni-app-default-rtdb.firebaseio.com/");
        FirebaseAuthProvider authProvider;
        string webAPIkey = "AIzaSyClVyVHgbXooKCTyoKMg6RgfBcnkkFKTX0";

        private string _firstName;
        private string _lastName;
        private string _email;
        private string _password;
        private string _confirmpass;
        private bool _isBusy;
        private string _selectedGender;
        private string _phoneNumber;
        private string _emailErrorMessage;
        private string _emptyFieldsFirstNameErrorMessage;
        private string _passwordErrorMessage;
        private string _BirthdateErrorMessage;
        private string _gendersErrorMessage;
        private bool _isEmailValid = true;
        private string emptyFieldsErrorMessage;
        private bool showEmptyFieldsError;
        private string emptyFieldsLastNameErrorMessage;
        private string _phoneNumberErrorMessage;

        /*error messages*/



        public string PhoneNumberErrorMessage
        {
            get => _phoneNumberErrorMessage;
            set => SetProperty(ref _phoneNumberErrorMessage, value);
        }
        public string GendersErrorMessage
        {
            get => _gendersErrorMessage;
            set => SetProperty(ref _gendersErrorMessage, value);
        }
        public string BirthdateErrorMessage
        {
            get { return _BirthdateErrorMessage; }
            set { SetProperty(ref _BirthdateErrorMessage, value); }
        }
        public string PasswordErrorMessage
        {
            get { return _passwordErrorMessage; }
            set { SetProperty(ref _passwordErrorMessage, value); }
        }
        public string EmailErrorMessage
        {
            get { return _emailErrorMessage; }
            set { SetProperty(ref _emailErrorMessage, value); }
        }
        public string EmptyFieldsFirstNameErrorMessage
        {
            get { return _emptyFieldsFirstNameErrorMessage; }
            set { SetProperty(ref _emptyFieldsFirstNameErrorMessage, value); }
        }
        public string EmptyFieldsErrorMessage
        {
            get { return emptyFieldsErrorMessage; }
            set { SetProperty(ref emptyFieldsErrorMessage, value); }
        }
        public string EmptyFieldsLastNameErrorMessage
        {
            get { return emptyFieldsLastNameErrorMessage; }
            set { SetProperty(ref emptyFieldsLastNameErrorMessage, value); }
        }
        public bool ShowEmptyFieldsError
        {
            get { return showEmptyFieldsError; }
            set { SetProperty(ref showEmptyFieldsError, value); }
        }
        public bool IsEmailValid
        {
            get { return _isEmailValid; }
            set { SetProperty(ref _isEmailValid, value); }
        }

        public string PhoneNumber
        {
            get => _phoneNumber;
            set
            {
               
                SetProperty(ref _phoneNumber, value);
            }
        }
        /*setters and getters*/
        public string FirstName
        {
            get { return _firstName; }
            set { SetProperty(ref _firstName, value); }
        }
        private string _birthdate;
        public string Birthdate
        {
            get { return _birthdate; }
            set { SetProperty(ref _birthdate, value); }
        }
        public string LastName
        {
            get { return _lastName; }
            set { SetProperty(ref _lastName, value); }
        }
        public string Email
        {
            get { return _email; }
            set { SetProperty(ref _email, value); }
        }
        public string Password
        {
            get { return _password; }
            set { SetProperty(ref _password, value); }
        }
        public string ConfirmPassword
        {
            get { return _confirmpass; }
            set { SetProperty(ref _confirmpass, value); }
        }
        public string SelectedGender
        {
            get => _selectedGender;
            set
            {
                SetProperty(ref _selectedGender, value);

            }
        }
        public new bool IsBusy
        {
            get { return _isBusy; }
            set { SetProperty(ref _isBusy, value); }
        }


        public ICommand SignUpCommand { get; set; }

        public SignUpViewModel()
        {
            SignUpCommand = new Command(async () => await ExecuteSignUpCommand());
        }

        private bool IsValidEmail(string email)
        {
            // This regular expression pattern is used to check if the email is valid
            string pattern = @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
            return Regex.IsMatch(email, pattern);
        }
      private bool IsValidPassword(string Password)
        {
            if (Password.Length<6) {
                return false;
            }
            else
            {
                return false;
            }
        }

        private async Task ExecuteSignUpCommand()
        {


            if (IsBusy)
                return;

            IsBusy = true;
            try
            {
            
                if (string.IsNullOrEmpty(_selectedGender))
                {
                    GendersErrorMessage = "Please select your gender";
                }
                else
                {
                    GendersErrorMessage = null;
                }
              
                if (string.IsNullOrEmpty(FirstName))
                {
                   
                    EmptyFieldsFirstNameErrorMessage = "Please enter your first name";
                    ShowEmptyFieldsError = true;
                }
                else
                {
                    EmptyFieldsFirstNameErrorMessage = "";
                }

                 if (string.IsNullOrEmpty(LastName))
                {
                    EmptyFieldsLastNameErrorMessage = "Please enter your last name";
                    ShowEmptyFieldsError = true;
                }
                else
                {
                    EmptyFieldsLastNameErrorMessage = "";
                }
                if (string.IsNullOrEmpty(PhoneNumber) || !PhoneNumber.StartsWith("+"))
                {
                    PhoneNumberErrorMessage = "Please enter a valid phone number with a country code.";
                }
                else
                {
                    PhoneNumberErrorMessage = "";
                }
                if (string.IsNullOrEmpty(Email))
                {
                    EmailErrorMessage = "Please enter your email";
                    ShowEmptyFieldsError = true;
                }
                else
                {
                    EmailErrorMessage = "";
                }
                 if (string.IsNullOrEmpty(Password))
                {
                    PasswordErrorMessage = "Please enter your password";
                    ShowEmptyFieldsError = true;
                }
                else
                {
                    PasswordErrorMessage = "";
                }
                 if (string.IsNullOrEmpty(ConfirmPassword))
                {
                    EmptyFieldsErrorMessage = "Please confirm your password";
                    ShowEmptyFieldsError = true;
                }
                else
                {
                    // All fields are filled, no error message to display
                    EmptyFieldsErrorMessage = "";
                    ShowEmptyFieldsError = false;
                }
                if (!string.Equals(Password, ConfirmPassword))
                {
                    EmptyFieldsErrorMessage = "Passwords do not match";
                }
                else
                {
                    EmptyFieldsErrorMessage = "";
                }
                if (!IsValidPassword(Password))
                {
                    PasswordErrorMessage = "Password should be at least 6 characters";
                }
                else
                {
                    PasswordErrorMessage = "";
                }
                if (DateTime.TryParse(Birthdate, out DateTime birthDay))
                {
                    var today = DateTime.Today;
                    var age = today.Year - birthDay.Year;
                    if (birthDay > today.AddYears(-age))
                        age--;

                    if (age < 16)
                    {
                        BirthdateErrorMessage = "You must be at least 16 years old to sign up.";
                        return;
                    }
                    else
                    {
                        BirthdateErrorMessage = "";
                    }
                }
                else
                {
                    BirthdateErrorMessage = "Invalid birthdate format.";
                    return;
                }

                // Check if the email is valid
                if (!IsValidEmail(Email))
                {
                    EmailErrorMessage = "Please enter a valid email address.";
                }
                else
                {
                    EmailErrorMessage = "";
                }
               
                try
                {
                    authProvider = new FirebaseAuthProvider(new FirebaseConfig(webAPIkey));
                    await authProvider.CreateUserWithEmailAndPasswordAsync(Email, Password);
                    await firebaseClient.Child("User").PostAsync(new User
                    {
                        FirstName = FirstName,
                        LastName = LastName,
                        Email = Email,
                        SelectedGender = SelectedGender,
                        Birthdate = Birthdate,
                        PhoneNumber = PhoneNumber,
                        PhotoUrl = "",
                    });
                }
                catch (Exception ex)
                {
                    EmailErrorMessage = "Email Exist";
                }
            }
           
            catch (FirebaseException ex)
            {
              await App.Current.MainPage.DisplayAlert("Error", ex.Message, "OK");
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Error", ex.Message, "OK");
            }
            finally
            {
                IsBusy = false;
            }


        }
    }
}


