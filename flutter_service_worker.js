'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "625bb2ee301abd924fddf9980460bb10",
".git/config": "95be10f05fe22d18e2e2be96285ef11e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "041e4071d4af108385d584a87a10a692",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "906bd68cbf0c9cc2fef1d0a08e05b3af",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "b381a2ac247b662822a75b4bc67c8aa0",
".git/logs/refs/heads/main": "e6d29593b1ccba6f81651b7721937533",
".git/logs/refs/remotes/origin/main": "258748cc90b7f625ffd2f8ea9c84b9f7",
".git/objects/02/061bc486c0568140450c1bb3829414d8ea778a": "9d9fb4019ff09c73d61d5ed04ef56fec",
".git/objects/08/38e2dc6261e7ab2c978dbbb1aebcb6507b8246": "f952d45dc80dbd08fc003fe402d8cab1",
".git/objects/09/189471cd1597abbcbc23bd1fcd564a84d83d24": "fc42552c4cc0cb5267078a5bbbea1e83",
".git/objects/0b/57094b54c42a1a7b299bad7fa86af67543c00a": "5376a283a549bb3aeba444c3921a44e9",
".git/objects/0d/4ca6b43c4ef383408e87568949259a87ec3f3b": "ebd08ad704c14e2d0611ebc1907999b7",
".git/objects/0e/8a31d915c79536c34bca930895e700a15232b5": "931ba4842591f87d9ec9322f2c366825",
".git/objects/0e/c646fbe3bbf0c4a76829bd6e8bc429c2727351": "d9292825a9807af2fde3c3d601692a72",
".git/objects/12/ab72741534487e0a5b56a2fc88145688ffe608": "caa4de9d217db46626448b93ddb8f810",
".git/objects/13/da841a2b8a7877bdf84f5b1c3600dd9daa95fb": "19af0bc3e6a2058874ca2c193973752d",
".git/objects/13/dcc997f064574ca0fa541f93608005369a05b8": "d98f427bc73ac3a2fad81a4ce6f40791",
".git/objects/18/6b6a4a9dfa306ecb7dcb2b0cc67326f3ca65f5": "ca23744c899d60d21bb6fcd565d138e2",
".git/objects/1a/b847b818dec389fb43fb9da80637c02e27d3d3": "8af286f2a069534106d53e8c037b0a4a",
".git/objects/1c/15f91f64918fad289d4bad91e8bf036af6ff9d": "efbb89a6bb89ae8ea5bfd1ab827a68dc",
".git/objects/1c/5cd6ff2897b81868b39fdaedaed5deb3fc568e": "566b5a49e27ab46210dea27f3f401bab",
".git/objects/1d/bd466470f6f3bfdb1e7c1552cdc5f5d29046f9": "ca796f55bd0517471687cd4cef4508b7",
".git/objects/1e/5272711528258903eb6eb60b499806d658b0f1": "c604a06ed0ba788add36ba43dab2f453",
".git/objects/23/16cfb06b9a889502d793d7fee3dc9b8f445dab": "56e84de8d4f05d4f4acd244e029d31e5",
".git/objects/29/1b8cdc831ff6be7c9eea5258f6ed524e1a97ba": "d382e6f41d912c17c99dda33925db555",
".git/objects/2a/87cc9466f48e5d251388fdfb5c8f09de06ad48": "af735cbb127a9c17da67e7af2275f329",
".git/objects/2b/2c3a562b375d8b8666585df340e8f3868f38a8": "92a5ead6e841d0afb413c30b02850499",
".git/objects/2e/e561ad939434b47ed90d669485108d8ebc0697": "b115a76b9e29ba2ae436865dd516dc2b",
".git/objects/33/c63e6f75fadc8de7e384915f05669b0021b0a7": "39e13ea58bd8d73d6c67818298f60b00",
".git/objects/36/cf49688e7216fcd19612a6ecf3240d61b56469": "a564230228ea864c91b45e423f439766",
".git/objects/3d/5a325350bace1cc61496fa140ff204d30d9120": "e95eefd7139ab803f37243ce0cc65afb",
".git/objects/3f/7682a6e830e34f27e98a37d386fa63b2985df4": "1acac7a08041d4c873c649de6751474c",
".git/objects/41/e85d2083e4f92d85bf0d69b412c77eb7d94c3d": "95d89f3e589016113390ce11c7d78656",
".git/objects/44/b55832ad03e5fe4999b8cfa0f75fba212bfceb": "48e24fe47fba54ce28224270100cc62a",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/48/e006b797e05b32884d3b7139de5310d7b8527b": "168a8af7e2e39458025fb66930888059",
".git/objects/4b/5b196f783e1345d882e17a0e5f213867a464e9": "7f7f2e6b496f2f6ee5b053ecee44746f",
".git/objects/4d/66f4f0988e29ef85ca8b49233e0382b69b3b63": "be7ae01aae5db9f4480a5eae377f822b",
".git/objects/4e/bfa7851b640028d7a4a6ce601021813b99da41": "e5cea23502b0af9b8e4d47d0f0692b6d",
".git/objects/51/aa86712d2c23adaaf9ef19d621d9feb29c8a4e": "169808b42006f23fd47be07b981db336",
".git/objects/58/4d860c7ada1eda849e7621770af094df1b9394": "a081683df28459ae9b8cfeb5765b138e",
".git/objects/58/cafe4b0062cd49883756327433867b146cdff8": "ab9b09b5c9f3e3afbb13aa4bf2d3b933",
".git/objects/5b/f9fad9ee205e54374daafa3ec2f4fe61b1424a": "745be3e4da0dbaf982159b8149cc0811",
".git/objects/62/ee59573416e51c68b44218ec985bdb0d86ac13": "dc8dbd0543f7e2d84ad94fe867a70373",
".git/objects/66/eb587acfef83f2226c0df8f046053bf0c2b66b": "fc41c280ade1bac212f6d72a097abee7",
".git/objects/68/f2cc232dbc70d3eba5c615e4703d48843c5473": "40675ff6cdbb54ad2e5d436d9279a874",
".git/objects/69/c3f5c01d790237d86760e28841e1a041c5528c": "2c02be1c99efb17f42a463bce17eec28",
".git/objects/6e/d080a43a2cf9e6149a91659a290c4d057c8cea": "216144892917889ae83a566410f85043",
".git/objects/70/db23a2316ea59b6640c08f5509c2f9c04629b0": "cc05951eae87fb5f2f931ee4bac34145",
".git/objects/72/7671d5e48378ac2a628de103c7577131eb7806": "dc94815184289e21b8a7e5622406572c",
".git/objects/78/e8826fbc653850df01aaa8bd51ff687ef6591d": "93bbb9450382d388ebc50dfd27c9daee",
".git/objects/79/1fad7e4d0691573112062218b41c19bf42018e": "aea36646d82047af0c13d15337530b87",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7b/2b5490b03e4d43d1387e6c17a18afcbf29731c": "063dd69928778747599f1af6dd70c3b2",
".git/objects/7b/4f6fca37bd2b8cd1c37dfe4779b83aad8d022c": "294355b8ca935160686ca7ba86b803ed",
".git/objects/7c/7e1ddfeef32541746f94b92ad6ee41ee26ce5f": "8ad07799fc80a24683de2d7e65add665",
".git/objects/7c/85d70cd0f019a4d6469c117deca13691669eff": "63dac58773a202f7d0f939fb2b4ee29f",
".git/objects/7c/fb6f962bdb8c4b610bb1bb25b6c4361f9d20e8": "20235224869b650fc9ceb371e56bb5c9",
".git/objects/7f/5fc99eb56ee9abb308ec0b230fe314d690901a": "b4146fd4fbf7405c95fd7e90a4f040d7",
".git/objects/84/e9a6454a9f25945605a8e9c1052508d3b47f93": "03ede858a4fad0098a48faf0880e168a",
".git/objects/85/944c3c5287b5dc219d1ea4608de6d80cf66ddb": "bee6d9c8d4422f6274d2f39789c6b1a8",
".git/objects/86/3860dc220ea557b5fdcc30f83b39095dba021c": "e351d7fc527a293b1096d5620807c8ab",
".git/objects/86/f446287c3bead5255404a64e77b9543df108b5": "632d10860444a66ae7bc5a78aa746878",
".git/objects/88/357d197d59c361886e5f22ecae71bbc0c862cf": "172cf2e5dd8705eab2b40d6eb604cb64",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/348cdd07b2f576330b60952226c2ecaab2690d": "8866e49e3afaea027aeea0ee182f4101",
".git/objects/90/99e910120ada027ca2eb43fc6249d199bec16c": "e3ffa650a3e8e11c4b8871a1641511f8",
".git/objects/91/49c63e1572e1eb3b962eb984713a6f3d774d7f": "3c6287635f9986815fd0e428c913946f",
".git/objects/92/b4f3f8872d6ab2196086b58222a50094477973": "25c1402e51445baa016a88f56c785636",
".git/objects/95/f3615c8b74cf7a7744e40631388313882c580d": "f4c292903e5a48bff7f2b9d32e75fc14",
".git/objects/97/8746b5424d1212460133977131fc5ef0971abb": "3cc094294d4d3275ff02b12eff5e10c3",
".git/objects/97/f21e0e0c48098ba6e1b71969c7009a7d7c06d8": "330907827f0481f5176ab30614db39ac",
".git/objects/99/cb332ac6bf1c6219c77f1601e80f19c693824c": "62f9bec0ca7b8be11dce33812c8229e0",
".git/objects/9a/ca0a86b124840d01cdb184e332dfc05337f63d": "8837b4ad2a039305765a0d43cd78b7ca",
".git/objects/9b/133100272f2064f236b08833d98ba0a79351d8": "415b3bafc8b7ad11d7d6cb88352b2d82",
".git/objects/9d/68fc84863c83e8e6258839d698bf9b5d8f800c": "eef2113f10fcd974729021dde6c92db8",
".git/objects/9d/b93495aa78ea9b172821fdc603558eb5de1eb3": "1b4d90ac74b96977a2cd7bf95b3631db",
".git/objects/a1/011da9238a8cb6d574f42db9e7de2c7f2c76d7": "8580fb80c623192a64147f22175da53f",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a5/fbc79e440ba50c07b753daee47b5ab030975cb": "1c2609be5e8b139ac1a36c08611e2934",
".git/objects/a8/0085fc73e71061337760cb81acce70088dab12": "0667514164dcccbb2754f05c9d048239",
".git/objects/ad/5462699828c454b5a6d638f4d9a51849f75686": "cf4a18e9d143c1ff3823bccee2cf7355",
".git/objects/b1/d39d1103640cfd12b2aecb9ea7c26f672cba9f": "d8e64fe986f4cf37cb199814c9ba9301",
".git/objects/b2/7c9057971d0991fd6d71732d5d3c09f4908384": "465876c228b5981c7545e513b11c7bdc",
".git/objects/b4/e5a6871235243bd6fa380e084d9a57c1ace993": "302ee190ee13e41a370b4b9685ad86e4",
".git/objects/b5/5e68978a1d1ccd1ef8164c760f2548d38877fa": "08b75fc5634b1274b5da480de7298a01",
".git/objects/b6/8fff9023b2f52ab9d625e6048b1ba9fbced483": "fb4ddc82f8c91a9d8ea1b5722e3030da",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/be/5d6b6e9311fd2a79d9137f969e215329a4c947": "4d42ee9aa9847397553ac66ac20494c1",
".git/objects/bf/2b3f89db2114cde8bff5c303c258793a6eca5f": "c669cfce29ea84daadafa3af82b67a66",
".git/objects/c2/99d05d930e7bb523af0b6dd590eb644ab1fcbb": "c9b02e792f98172f051d65f64f0aef59",
".git/objects/c8/0dc990595f4b00e4d841fe6362bce8b5a132a5": "04bcf2ad2ed6b4e81a4939b910f3056a",
".git/objects/c9/009fa527d9f43eba24c0f355b987d8a15e1abc": "477706937b02f96e92a1004fea6c8c2a",
".git/objects/cc/5725b315760d100f6386e6bbf09af8fe57a9f1": "29c19352d2bee0821600856656c95791",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/d2/842e495f547ddd597c176ebd3bf06c53b5c03f": "b95b66c81e5fc94145a4bb6f2594ffa4",
".git/objects/d3/1dd7f0f1acdeb1311edc0ba237c41b2714baf2": "4c7be510ac17397e76e14de0d4ec68dd",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/db/4a3bb7d13484a743bebd198630e861d566a0f9": "477bbf8b0ab61892813a7e7e35239883",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/e0/2012ca0a73da86edd7614aebdc24f350669305": "4cb516f7f367eb8387729d8cfc7cf9b2",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/2697e74daafb75b1ce82273031f84d48c8504b": "ee2abb1707c2926c567d3dd96657a885",
".git/objects/e9/d1c069a2673c7b84a83ccbd4635551fbd5ca5a": "4c61666f11016f57e1bdee8fb18dab77",
".git/objects/eb/709d6f3bc29bd4c96ad09587e718867635d79f": "45405e986c29953d28574d29d7992bbf",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/1736b233acb8266c3a1af84941a75f4330a63a": "2b6885e683d74fa0877d4000fb184884",
".git/objects/f3/294297f7b9eb72cd8ae25ec8058e6aea3bfc48": "63b96f309c1f4b3a92bec4a41edd11cf",
".git/objects/f8/64dbdde6862faf06b0715a47633cfe9d7cc906": "91d35ac9771af6d61521b20ae0860e0a",
".git/objects/fa/85ce13ee38bc91fce2a49cbe3643f4e10a29c2": "b1acfb00fa386338c161404c18c79073",
".git/objects/ff/5014b18497990333be7b999cae78d58bd838d0": "cea51ab1a5abd1461ef8eedafc5eb272",
".git/ORIG_HEAD": "717caa890333d102d3a09ede47cca4d2",
".git/refs/heads/main": "ad1372c2c55f73e161f54ae8dc719296",
".git/refs/remotes/origin/main": "ad1372c2c55f73e161f54ae8dc719296",
"assets/AssetManifest.json": "6f71c651c1e2d9650008c9166920247a",
"assets/assets/Aman.png": "a6f5350be845bd6a728a62ef8837d56b",
"assets/assets/David.png": "767b16025f34857fd72a435c72af814c",
"assets/assets/happyTree.png": "1a05f6b703d87a1a9e6b43bbf8e409f1",
"assets/assets/Kollin.png": "0f841f6cb7928cfeedbae7b33f87bd5b",
"assets/assets/logo.png": "c0b8600e86975531fbfb4016ccb1ec49",
"assets/assets/logoTran.png": "1d3b53439605d2ca0f594863e6326627",
"assets/assets/Raj.png": "f64df365288c3e18583b62a03fc93e50",
"assets/assets/therapist1.png": "1568a415398d4cb693c50af0bd515c18",
"assets/assets/therapist2.png": "b1e9ebeba8030b0ae863750787e0a878",
"assets/assets/therapist3.png": "0bb161d615a9b3b59d4033b0e0e53da7",
"assets/assets/therapist4.png": "fcf03b41efefb4661f147bb7566f3859",
"assets/assets/therapist5.png": "8e27ac4d89e6c7d316a9748ecc64f767",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "72d046e73a8a2d9a7d9aa9fce47243d4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-arrow.png": "8efbd753127a917b4dc02bf856d32a47",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-attachment.png": "9c8f255d58a0a4b634009e19d4f182fa",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-delivered.png": "b6b5d85c3270a5cad19b74651d78c507",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-document.png": "e61ec1c2da405db33bff22f774fb8307",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-error.png": "5a59dc97f28a33691ff92d0a128c2b7f",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-seen.png": "10c256cc3c194125f8fffa25de5d6b8a",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-send.png": "2a7d5341fd021e6b75842f6dadb623dd",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-arrow.png": "3ea423a6ae14f8f6cf1e4c39618d3e4b",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-attachment.png": "fcf6bfd600820e85f90a846af94783f4",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-delivered.png": "28f141c87a74838fc20082e9dea44436",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-document.png": "4578cb3d3f316ef952cd2cf52f003df2",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-error.png": "872d7d57b8fff12c1a416867d6c1bc02",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-seen.png": "684348b596f7960e59e95cff5475b2f8",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-send.png": "8e7e62d5bc4a0e37e3f953fb8af23d97",
"assets/packages/flutter_chat_ui/assets/icon-arrow.png": "678ebcc99d8f105210139b30755944d6",
"assets/packages/flutter_chat_ui/assets/icon-attachment.png": "17fc0472816ace725b2411c7e1450cdd",
"assets/packages/flutter_chat_ui/assets/icon-delivered.png": "b064b7cf3e436d196193258848eae910",
"assets/packages/flutter_chat_ui/assets/icon-document.png": "b4477562d9152716c062b6018805d10b",
"assets/packages/flutter_chat_ui/assets/icon-error.png": "4fceef32b6b0fd8782c5298ee463ea56",
"assets/packages/flutter_chat_ui/assets/icon-seen.png": "b9d597e29ff2802fd7e74c5086dfb106",
"assets/packages/flutter_chat_ui/assets/icon-send.png": "34e43bc8840ecb609e14d622569cda6a",
"assets/shaders/ink_sparkle.frag": "6333b551ea27fd9d8e1271e92def26a9",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "22c0cb3968d4aadb5c79c171c9e438ae",
"/": "22c0cb3968d4aadb5c79c171c9e438ae",
"main.dart.js": "ad9707358c8ba6e14fba1cdac00a5c87",
"manifest.json": "69666c639a8a137deb0b91e5bbc1f948",
"README.md": "e68bfa7d082306b0b26b58293fdb3e7d",
"version.json": "fa9d178a86efff48b2b5fd27350fc049"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
