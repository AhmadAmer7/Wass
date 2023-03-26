; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 63
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 92
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 20
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 87
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 77
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 77
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 44
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 78
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 10
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 42
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 1
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 58
	i32 231814094, ; 12: System.Globalization => 0xdd133ce => 6
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 101
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 47
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 62
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 56
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 34
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 25
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 393699800, ; 20: Firebase => 0x177761d8 => 15
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 46
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 86
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 3
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 55
	i32 459347974, ; 25: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 103
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 19
	i32 469710990, ; 27: System.dll => 0x1bff388e => 22
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 56
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 67
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 109
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 96
	i32 545304856, ; 32: System.Runtime.Extensions => 0x2080b118 => 107
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 99
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 51
	i32 663517072, ; 35: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 83
	i32 666292255, ; 36: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 39
	i32 672442732, ; 37: System.Collections.Concurrent => 0x2814a96c => 9
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 33
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 23
	i32 809851609, ; 40: System.Drawing.Common.dll => 0x30455ad9 => 98
	i32 831745141, ; 41: System.Reactive.Linq => 0x31936c75 => 29
	i32 843511501, ; 42: Xamarin.AndroidX.Print => 0x3246f6cd => 74
	i32 877678880, ; 43: System.Globalization.dll => 0x34505120 => 6
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 92
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 20
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 974778368, ; 47: FormsViewGroup.dll => 0x3a19f000 => 16
	i32 987214855, ; 48: System.Diagnostics.Tools => 0x3ad7b407 => 8
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 3
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 38
	i32 1042160112, ; 52: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 89
	i32 1044663988, ; 53: System.Linq.Expressions.dll => 0x3e444eb4 => 110
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 64
	i32 1098259244, ; 55: System => 0x41761b2c => 22
	i32 1175144683, ; 56: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 81
	i32 1178241025, ; 57: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 71
	i32 1204270330, ; 58: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 39
	i32 1267360935, ; 59: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 82
	i32 1293217323, ; 60: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 53
	i32 1324164729, ; 61: System.Linq => 0x4eed2679 => 104
	i32 1364015309, ; 62: System.IO => 0x514d38cd => 108
	i32 1365406463, ; 63: System.ServiceModel.Internals.dll => 0x516272ff => 93
	i32 1376866003, ; 64: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1379779777, ; 65: System.Resources.ResourceManager => 0x523dc4c1 => 7
	i32 1395857551, ; 66: Xamarin.AndroidX.Media.dll => 0x5333188f => 68
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 48
	i32 1453312822, ; 68: System.Diagnostics.Tools.dll => 0x569fcb36 => 8
	i32 1457743152, ; 69: System.Runtime.Extensions.dll => 0x56e36530 => 107
	i32 1460219004, ; 70: Xamarin.Forms.Xaml => 0x57092c7c => 90
	i32 1462112819, ; 71: System.IO.Compression.dll => 0x57261233 => 23
	i32 1469204771, ; 72: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 37
	i32 1550322496, ; 73: System.Reflection.Extensions.dll => 0x5c680b40 => 4
	i32 1582372066, ; 74: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 52
	i32 1592978981, ; 75: System.Runtime.Serialization.dll => 0x5ef2ee25 => 12
	i32 1622152042, ; 76: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 66
	i32 1624863272, ; 77: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 85
	i32 1636350590, ; 78: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 50
	i32 1639515021, ; 79: System.Net.Http.dll => 0x61b9038d => 24
	i32 1657153582, ; 80: System.Runtime => 0x62c6282e => 31
	i32 1658241508, ; 81: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 79
	i32 1658251792, ; 82: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 91
	i32 1670060433, ; 83: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 47
	i32 1677501392, ; 84: System.Net.Primitives.dll => 0x63fca3d0 => 106
	i32 1701541528, ; 85: System.Diagnostics.Debug.dll => 0x656b7698 => 1
	i32 1702193930, ; 86: App22.Android.dll => 0x65756b0a => 0
	i32 1726116996, ; 87: System.Reflection.dll => 0x66e27484 => 102
	i32 1729485958, ; 88: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 43
	i32 1765942094, ; 89: System.Reflection.Extensions => 0x6942234e => 4
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 78
	i32 1776026572, ; 91: System.Core.dll => 0x69dc03cc => 21
	i32 1788241197, ; 92: Xamarin.AndroidX.Fragment => 0x6a96652d => 55
	i32 1808609942, ; 93: Xamarin.AndroidX.Loader => 0x6bcd3296 => 66
	i32 1813201214, ; 94: Xamarin.Google.Android.Material => 0x6c13413e => 91
	i32 1818569960, ; 95: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 72
	i32 1858542181, ; 96: System.Linq.Expressions => 0x6ec71a65 => 110
	i32 1867746548, ; 97: Xamarin.Essentials.dll => 0x6f538cf4 => 86
	i32 1878053835, ; 98: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 90
	i32 1885316902, ; 99: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 40
	i32 1900610850, ; 100: System.Resources.ResourceManager.dll => 0x71490522 => 7
	i32 1904755420, ; 101: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 11
	i32 1919157823, ; 102: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 69
	i32 2019465201, ; 103: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 64
	i32 2055257422, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2079903147, ; 105: System.Runtime.dll => 0x7bf8cdab => 31
	i32 2090596640, ; 106: System.Numerics.Vectors => 0x7c9bf920 => 26
	i32 2093472770, ; 107: App22.Android => 0x7cc7dc02 => 0
	i32 2097448633, ; 108: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 57
	i32 2126786730, ; 109: Xamarin.Forms.Platform.Android => 0x7ec430aa => 88
	i32 2193016926, ; 110: System.ObjectModel.dll => 0x82b6c85e => 109
	i32 2201231467, ; 111: System.Net.Http => 0x8334206b => 24
	i32 2216717168, ; 112: Firebase.Auth.dll => 0x84206b70 => 14
	i32 2217644978, ; 113: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 81
	i32 2244775296, ; 114: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 67
	i32 2256548716, ; 115: Xamarin.AndroidX.MultiDex => 0x8680336c => 69
	i32 2261435625, ; 116: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 59
	i32 2279755925, ; 117: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2292630417, ; 118: System.Reactive.PlatformServices.dll => 0x88a6c391 => 30
	i32 2303054758, ; 119: System.Reactive.Interfaces.dll => 0x8945d3a6 => 28
	i32 2315684594, ; 120: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 35
	i32 2353062107, ; 121: System.Net.Primitives => 0x8c40e0db => 106
	i32 2409053734, ; 122: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 73
	i32 2454642406, ; 123: System.Text.Encoding.dll => 0x924edee6 => 105
	i32 2465532216, ; 124: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 46
	i32 2471841756, ; 125: netstandard.dll => 0x93554fdc => 94
	i32 2475788418, ; 126: Java.Interop.dll => 0x93918882 => 17
	i32 2501346920, ; 127: System.Data.DataSetExtensions => 0x95178668 => 97
	i32 2505896520, ; 128: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 63
	i32 2581819634, ; 129: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 82
	i32 2620871830, ; 130: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 50
	i32 2624644809, ; 131: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 54
	i32 2633051222, ; 132: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 62
	i32 2693849962, ; 133: System.IO.dll => 0xa090e36a => 108
	i32 2701096212, ; 134: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 79
	i32 2715334215, ; 135: System.Threading.Tasks.dll => 0xa1d8b647 => 2
	i32 2732626843, ; 136: Xamarin.AndroidX.Activity => 0xa2e0939b => 34
	i32 2737747696, ; 137: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 37
	i32 2766581644, ; 138: Xamarin.Forms.Core => 0xa4e6af8c => 87
	i32 2778768386, ; 139: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2810250172, ; 140: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 48
	i32 2819470561, ; 141: System.Xml.dll => 0xa80db4e1 => 32
	i32 2853208004, ; 142: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2855708567, ; 143: Xamarin.AndroidX.Transition => 0xaa36a797 => 80
	i32 2901442782, ; 144: System.Reflection => 0xacf080de => 102
	i32 2903344695, ; 145: System.ComponentModel.Composition => 0xad0d8637 => 100
	i32 2905242038, ; 146: mscorlib.dll => 0xad2a79b6 => 19
	i32 2916838712, ; 147: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 85
	i32 2919462931, ; 148: System.Numerics.Vectors.dll => 0xae037813 => 26
	i32 2921128767, ; 149: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 36
	i32 2959614098, ; 150: System.ComponentModel.dll => 0xb0682092 => 10
	i32 2978675010, ; 151: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 53
	i32 3024354802, ; 152: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 58
	i32 3044182254, ; 153: FormsViewGroup => 0xb57288ee => 16
	i32 3057625584, ; 154: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3075834255, ; 155: System.Threading.Tasks => 0xb755818f => 2
	i32 3111772706, ; 156: System.Runtime.Serialization => 0xb979e222 => 12
	i32 3204380047, ; 157: System.Data.dll => 0xbefef58f => 95
	i32 3211777861, ; 158: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 52
	i32 3220365878, ; 159: System.Threading => 0xbff2e236 => 5
	i32 3247949154, ; 160: Mono.Security => 0xc197c562 => 111
	i32 3258312781, ; 161: Xamarin.AndroidX.CardView => 0xc235e84d => 43
	i32 3267021929, ; 162: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 41
	i32 3282591531, ; 163: System.Reactive.Interfaces => 0xc3a85f2b => 28
	i32 3299363146, ; 164: System.Text.Encoding => 0xc4a8494a => 105
	i32 3300173928, ; 165: System.Reactive.Core => 0xc4b4a868 => 27
	i32 3317135071, ; 166: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 51
	i32 3317144872, ; 167: System.Data => 0xc5b79d28 => 95
	i32 3322403133, ; 168: Firebase.dll => 0xc607d93d => 15
	i32 3340431453, ; 169: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 40
	i32 3346324047, ; 170: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 71
	i32 3353484488, ; 171: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 57
	i32 3362522851, ; 172: Xamarin.AndroidX.Core => 0xc86c06e3 => 49
	i32 3366347497, ; 173: Java.Interop => 0xc8a662e9 => 17
	i32 3374999561, ; 174: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3404865022, ; 175: System.ServiceModel.Internals => 0xcaf21dfe => 93
	i32 3425410982, ; 176: System.Reactive.Core.dll => 0xcc2b9fa6 => 27
	i32 3429136800, ; 177: System.Xml => 0xcc6479a0 => 32
	i32 3430777524, ; 178: netstandard => 0xcc7d82b4 => 94
	i32 3441283291, ; 179: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 54
	i32 3476120550, ; 180: Mono.Android => 0xcf3163e6 => 18
	i32 3486566296, ; 181: System.Transactions => 0xcfd0c798 => 96
	i32 3493954962, ; 182: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 45
	i32 3501239056, ; 183: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 41
	i32 3509114376, ; 184: System.Xml.Linq => 0xd128d608 => 33
	i32 3536029504, ; 185: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 88
	i32 3567349600, ; 186: System.ComponentModel.Composition.dll => 0xd4a16f60 => 100
	i32 3608519521, ; 187: System.Linq.dll => 0xd715a361 => 104
	i32 3615729691, ; 188: App22 => 0xd783a81b => 13
	i32 3618140916, ; 189: Xamarin.AndroidX.Preference => 0xd7a872f4 => 73
	i32 3627220390, ; 190: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 74
	i32 3632359727, ; 191: Xamarin.Forms.Platform => 0xd881692f => 89
	i32 3633644679, ; 192: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 36
	i32 3641597786, ; 193: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3672681054, ; 194: Mono.Android.dll => 0xdae8aa5e => 18
	i32 3676310014, ; 195: System.Web.Services.dll => 0xdb2009fe => 101
	i32 3682565725, ; 196: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 42
	i32 3684561358, ; 197: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 45
	i32 3684933406, ; 198: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 11
	i32 3689375977, ; 199: System.Drawing.Common => 0xdbe768e9 => 98
	i32 3718780102, ; 200: Xamarin.AndroidX.Annotation => 0xdda814c6 => 35
	i32 3724971120, ; 201: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3758932259, ; 202: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 59
	i32 3760520151, ; 203: System.Reactive.Linq.dll => 0xe024fbd7 => 29
	i32 3786282454, ; 204: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 44
	i32 3822602673, ; 205: Xamarin.AndroidX.Media => 0xe3d849b1 => 68
	i32 3829621856, ; 206: System.Numerics.dll => 0xe4436460 => 25
	i32 3835113687, ; 207: System.Reactive.PlatformServices => 0xe49730d7 => 30
	i32 3857674108, ; 208: App22.dll => 0xe5ef6f7c => 13
	i32 3885922214, ; 209: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 80
	i32 3896106733, ; 210: System.Collections.Concurrent.dll => 0xe839deed => 9
	i32 3896760992, ; 211: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 49
	i32 3920810846, ; 212: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 99
	i32 3921031405, ; 213: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 83
	i32 3931092270, ; 214: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 72
	i32 3945713374, ; 215: System.Data.DataSetExtensions.dll => 0xeb2ecede => 97
	i32 3955647286, ; 216: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 38
	i32 4024013275, ; 217: Firebase.Auth => 0xefd991db => 14
	i32 4073602200, ; 218: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4105002889, ; 219: Mono.Security.dll => 0xf4ad5f89 => 111
	i32 4151237749, ; 220: System.Core => 0xf76edc75 => 21
	i32 4181436372, ; 221: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 103
	i32 4182413190, ; 222: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 65
	i32 4292120959 ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 65
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 63, i32 92, i32 20, i32 87, i32 77, i32 77, i32 44, i32 78, ; 0..7
	i32 10, i32 42, i32 1, i32 58, i32 6, i32 101, i32 47, i32 62, ; 8..15
	i32 56, i32 34, i32 25, i32 60, i32 15, i32 46, i32 86, i32 3, ; 16..23
	i32 55, i32 103, i32 19, i32 22, i32 56, i32 67, i32 109, i32 96, ; 24..31
	i32 107, i32 99, i32 51, i32 83, i32 39, i32 9, i32 33, i32 23, ; 32..39
	i32 98, i32 29, i32 74, i32 6, i32 92, i32 20, i32 60, i32 16, ; 40..47
	i32 8, i32 3, i32 76, i32 38, i32 89, i32 110, i32 64, i32 22, ; 48..55
	i32 81, i32 71, i32 39, i32 82, i32 53, i32 104, i32 108, i32 93, ; 56..63
	i32 76, i32 7, i32 68, i32 48, i32 8, i32 107, i32 90, i32 23, ; 64..71
	i32 37, i32 4, i32 52, i32 12, i32 66, i32 85, i32 50, i32 24, ; 72..79
	i32 31, i32 79, i32 91, i32 47, i32 106, i32 1, i32 0, i32 102, ; 80..87
	i32 43, i32 4, i32 78, i32 21, i32 55, i32 66, i32 91, i32 72, ; 88..95
	i32 110, i32 86, i32 90, i32 40, i32 7, i32 11, i32 69, i32 64, ; 96..103
	i32 61, i32 31, i32 26, i32 0, i32 57, i32 88, i32 109, i32 24, ; 104..111
	i32 14, i32 81, i32 67, i32 69, i32 59, i32 75, i32 30, i32 28, ; 112..119
	i32 35, i32 106, i32 73, i32 105, i32 46, i32 94, i32 17, i32 97, ; 120..127
	i32 63, i32 82, i32 50, i32 54, i32 62, i32 108, i32 79, i32 2, ; 128..135
	i32 34, i32 37, i32 87, i32 84, i32 48, i32 32, i32 84, i32 80, ; 136..143
	i32 102, i32 100, i32 19, i32 85, i32 26, i32 36, i32 10, i32 53, ; 144..151
	i32 58, i32 16, i32 70, i32 2, i32 12, i32 95, i32 52, i32 5, ; 152..159
	i32 111, i32 43, i32 41, i32 28, i32 105, i32 27, i32 51, i32 95, ; 160..167
	i32 15, i32 40, i32 71, i32 57, i32 49, i32 17, i32 75, i32 93, ; 168..175
	i32 27, i32 32, i32 94, i32 54, i32 18, i32 96, i32 45, i32 41, ; 176..183
	i32 33, i32 88, i32 100, i32 104, i32 13, i32 73, i32 74, i32 89, ; 184..191
	i32 36, i32 61, i32 18, i32 101, i32 42, i32 45, i32 11, i32 98, ; 192..199
	i32 35, i32 70, i32 59, i32 29, i32 44, i32 68, i32 25, i32 30, ; 200..207
	i32 13, i32 80, i32 9, i32 49, i32 99, i32 83, i32 72, i32 97, ; 208..215
	i32 38, i32 14, i32 5, i32 111, i32 21, i32 103, i32 65, i32 65 ; 224..223
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
