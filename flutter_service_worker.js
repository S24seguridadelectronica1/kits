'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "8439beb8b1732c0a2985d22d90c57484",
".git/config": "bf9a450d7598797e4504e9f9a15ef9b7",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "f2f530610eca49dd0c1e97f8235647b0",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "ff15b63ed3439b29e05ee80e27d1b2ef",
".git/logs/refs/heads/master": "ff15b63ed3439b29e05ee80e27d1b2ef",
".git/logs/refs/remotes/origin/gh-pages": "f7752ba3fe84fc64c1c63b5066d4ca92",
".git/objects/05/a9058f513cce5faf1704e06e3c150688b0a01f": "e8d02f60cf87abd4c1de4b153dd696dc",
".git/objects/07/ae1922088ef6972ab37fb25af295e4864aa875": "0debd67a8e816bc8935147e25b25a435",
".git/objects/0f/f6209b5b342931b4a2b7137937391702c0807d": "e71907ccff60cacd8019e0e110694467",
".git/objects/0f/f81975852c5ea348bdbdd6b0b8174ad8b35d39": "73a50c10b49331b961ec22c65a01fce7",
".git/objects/1d/dd49ed7aacc06bc46e57bcb22551f10854ded9": "887296f73a7b332e331ffc07f5399b08",
".git/objects/1e/08e328170f0d2720865dbd15f84a303495a6b4": "cc091deff8e9b16e1af990bc804d8133",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/20/5fe755b67b6ade5337d9995d69104167fc9c0f": "778366c778d231035f040dfff5e5be04",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/24/56cad07c5177120b764672c80061a2665d89ad": "6b07973489ec50e5343f0a44fa0a5f6e",
".git/objects/27/a297abdda86a3cbc2d04f0036af1e62ae008c7": "51d74211c02d96c368704b99da4022d5",
".git/objects/2b/8175ee5bc3fbf020d90da7e0181e5196ecefe1": "d869a4ad41065159664214ea818ea981",
".git/objects/2c/4ad0ff1af0221a465d94dab212348e52f18da2": "d45abfde395208036aa353566d09cee6",
".git/objects/2d/5355bed046e9d4609ac3b97523044b0c647a2b": "0c6a58632a21f60d514a22c6360ce8ca",
".git/objects/2f/25d993cced8e7675a83d6c9a6da3c61e4a1b37": "2db2904824e2d475ae3e78f30473e8b6",
".git/objects/31/39dc7cf301ea55d8f5e781d98d5c58a6ee1ccd": "e26ff2b827306e1115fe3796b3329bdc",
".git/objects/33/293bcd40df6c2326a46f40f061cb98870e920b": "c9abdacbabf0cefc5e14353aab0ddb68",
".git/objects/3a/9d40c2d120b1a90d9e57a5509feaf0771db59d": "c8b47df50f3249a005318cbcfdeb9952",
".git/objects/40/5373bf9c44425054c9b22af0302cec0c9de340": "ddf24405f1b1d5f451a8e42b6acc2430",
".git/objects/40/a9f21a456a0b6aa0199df396c84ffd90d9a74c": "7ee586c6062c997122c9243158b93ca2",
".git/objects/46/6cd810758e7b8f34e2b63fd0b3cd0048242c3c": "3b9361cb81ed70c95c9530f3ca3784d9",
".git/objects/4a/8e88821b1a79a5cda20b3d32b0034566e0ab52": "63c2d8ce19099f19f1b135d021bf59d3",
".git/objects/4e/512a3456846e363044e52b12dcce258edb0878": "401c99c35c2a66cca9310f9282a6976c",
".git/objects/50/2e39a6ec9a51393abd9ee0af58dee4f8cbc8c3": "e98b47011047e1f876a0ea2947f3b251",
".git/objects/54/c635e7231447f273a3a3fd998be5f0edf3cec4": "5ca7e1b5422648ab61154a4487668e2c",
".git/objects/5a/200b247791b7f95efea6e462549f82c6cd891f": "ee08a5ec00ab4d59553f4cb43cd9879a",
".git/objects/5e/5a6fe1f84ace7683d891271c45184a88a7d0f6": "0894ae640e5e4f82fa531646e5db4a96",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/63/6931bcaa0ab4c3ff63c22d54be8c048340177b": "8cc9c6021cbd64a862e0e47758619fb7",
".git/objects/6a/9635e705723f62be19cac179bdd8f7f6e1b234": "654b18b8e83a2d3080f3180bcd0b4b7f",
".git/objects/6d/5f0fdc7ccbdf7d01fc607eb818f81a0165627e": "2b2403c52cb620129b4bbc62f12abd57",
".git/objects/6f/d3f80d3feb110e4f79783c0048d6ebec14e060": "6cff986c4a16fcc13a9ebb6ab67db5f4",
".git/objects/73/7f149c855c9ccd61a5e24ce64783eaf921c709": "1d813736c393435d016c1bfc46a6a3a6",
".git/objects/74/7c8c10dce65cb87d67cc168adc4b4538cd96c2": "1b92544df27d7322eca9622630652cf5",
".git/objects/7e/b59ce7d4bc09677528d987ee0d345403d659f3": "1bc7fc90bbb6d34c73b4b6ec15b1afb9",
".git/objects/82/66a5fb2fc90e2a478aa2b81a97440600ef2492": "c1e74bae8ac7cedb4c98936a48143ce6",
".git/objects/83/0e4b2c112a48be462bf419669c75e1e7c68ca9": "90d95fb216e53edc8fe605b481e3be8b",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/89/d69efc2138dddd680f096f15bd8ac791817dc6": "7fa8c5ae65c8519b9cbf12ac47d672f4",
".git/objects/8a/c9154ff327b00f0d5f11ed5e552832fafbf7c3": "6da9c432f7429051bf6d201edeb958ac",
".git/objects/8c/59773bee8314a8ffb4431593d0fb49f52e34c6": "2eb993d30677573ffd0e58484cc6a514",
".git/objects/8e/a464111a7fd02ae3e54850f18fefbdcf718f2b": "7bbdff1e3c5744ddd02da036f355c8d4",
".git/objects/93/4219d6a3ea2676626b005beb7bba937414abb4": "76949b32fdb5a01c9f0240fbc914d63e",
".git/objects/97/8a4d89de1d1e20408919ec3f54f9bba275d66f": "dbaa9c6711faa6123b43ef2573bc1457",
".git/objects/9c/215498d1f376273a5646ab896ecd89cc6c3193": "eb4c1b661522e1c6cbf0c644a92a5c4f",
".git/objects/a3/89acf8241376ea04689dda3798e7d8aa083cc1": "02d6a5353f47e6cbc87e2641945e45f8",
".git/objects/a8/f197c0b31b1744029726135adf1ba609c8fbde": "21cea68ba2d563c5c679f567115d808a",
".git/objects/ac/0d33eea34634e1122fc2d5a5fc8726e0c62c12": "db044f715e5cb9c1af42df122138fab5",
".git/objects/ad/0eb9b41e99807b9bdf0b50d69e08a735c76f6c": "ece06a7f05deaeb106a28b3c6c5301b4",
".git/objects/af/31ef4d98c006d9ada76f407195ad20570cc8e1": "a9d4d1360c77d67b4bb052383a3bdfd9",
".git/objects/af/3ff0a5a74953d69b1105a5811a7e3dba9b1128": "a568dc6c512bc6f813cc0846ce1a95f0",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b1/afd5429fbe3cc7a88b89f454006eb7b018849a": "e4c2e016668208ba57348269fcb46d7b",
".git/objects/b6/e5689b6315543b2662e062f9c929126982a3f2": "8e96c7819f13dc606fbef667f92f03c7",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/bf/daed4287039c06237a9eaf03b05182170a3ffb": "24c00884962f0a70381ad33cc3095614",
".git/objects/c1/3dbb76b51b28214cb478648d9be30cd5b99a6d": "65fe217d8e505316e5d81285ca66f1ab",
".git/objects/c2/a81471bbaf9feff47185894da18ea0bb3e36fa": "aea095a96c5b1288834c910a5c1c946d",
".git/objects/c3/e81f822689e3b8c05262eec63e4769e0dea74c": "8c6432dca0ea3fdc0d215dcc05d00a66",
".git/objects/c6/06caa16378473a4bb9e8807b6f43e69acf30ad": "ed187e1b169337b5fbbce611844136c6",
".git/objects/ce/e3c5bb4ad9ca1b7e02e3391cc1cbba998308b7": "8e23cc0d8eea61c17a30b19ec3ccb417",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/bb66c353f76f2ea146d209fd6d57b6667c46fa": "829562d07bbeb5ccdc57c15e58a6813a",
".git/objects/d7/c61334f37b2d79e713f961f57818dbb6e57d02": "0598d1932c08cd39d1e17d7b857b6d06",
".git/objects/d7/e9de742c7ebe6f72ef4c25d6af786d39cf8d9d": "080500d4ab18deddf2c2a7a95e2fd21f",
".git/objects/d8/3cb5a7952ca356a6ffdc705d5803e2942f121f": "239dae689b665d9da10dfb4010db831d",
".git/objects/d9/3a1c77167e013d54f46b3ee418bba7a0331727": "0d81d0f0c2ad233a87c0ef103c08b7b1",
".git/objects/de/5f91c11212b95197d3890a6ba3e30317d73362": "54f7d97e88c7a5c2c16ead3e4c3b736c",
".git/objects/e3/54747cd745b73b8a66e5a00598e9e187dce273": "249abbc14d5e1f926ce2dedd9356b6ee",
".git/objects/e4/85928f079a450d034118896ae471f99c5cc903": "bfec5e480c45076ed3e65eaed9faca84",
".git/objects/e5/94e2db61703f0b256861f952299424e49988e0": "2b469765eabae0810656e64edaca5071",
".git/objects/e6/4376e5fbef44dd4cef0d744a44b6f3ada92910": "8db356d0ed96decc31e9db7e83702eb9",
".git/objects/ec/361605e9e785c47c62dd46a67f9c352731226b": "d1eafaea77b21719d7c450bcf18236d6",
".git/objects/ec/68ef92244aa3f04545aa650855867a007e95a7": "f8ce003a92df87d596e89cad06f05e6b",
".git/objects/f0/2d2d83aeb6b329281de0b8451f31c0f28f4279": "67a40dfd2d8a765b4dc84bfae15bc5cb",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/fa/67904a54b8fbaf905072c8d164a5021b911dfc": "9b6872f052255b2747d143f316108d50",
".git/refs/heads/master": "7e8a9b0921d20c78e8f058eba8de9f9b",
".git/refs/remotes/origin/gh-pages": "7e8a9b0921d20c78e8f058eba8de9f9b",
"assets/AssetManifest.bin": "2189a91704d1c2055c31a5d0d1fc4406",
"assets/AssetManifest.bin.json": "338b23d0d5d2cffe4c217bc8aae7f147",
"assets/AssetManifest.json": "273837ba9cc6d41f2a01922e77ae0684",
"assets/assets/images/1.webp": "b1b8035387dbbfea4d48461e450be1f9",
"assets/assets/images/10.webp": "63a0c8da604ad7ee890ee249db11ce82",
"assets/assets/images/11.webp": "1de8ffcb0935adbf3a64464535015a2f",
"assets/assets/images/12.webp": "69c7b68fdcd861529ec9e1152c849587",
"assets/assets/images/13.webp": "3d6d6ab125900b044164b2182a4682a3",
"assets/assets/images/14.webp": "00349a46541bebbd7e8c289cba489f87",
"assets/assets/images/15.webp": "1d935c58a553566198c10b22b275c920",
"assets/assets/images/16.webp": "1037402a567d56a27342199b25836e52",
"assets/assets/images/17.webp": "6100369502fa0f169d50f45b5a3ae716",
"assets/assets/images/18.webp": "991eae4996a9ccacb864d63f0fc3a455",
"assets/assets/images/19.webp": "c89de4c7b699d4ac4670786dc2e1cf88",
"assets/assets/images/2.webp": "aed05ea8b003d3ad3034be872af857d5",
"assets/assets/images/20.webp": "53dd70a5658f139ff4c7aa043722d6ec",
"assets/assets/images/21.webp": "12b94b5e1bb01e8392bbc924dd9f25c4",
"assets/assets/images/22.webp": "c0b8e1f6b8f8901f0553e6e4b84788b8",
"assets/assets/images/23.webp": "6cc155ed0d13f7de9095bcffb68697b3",
"assets/assets/images/24.webp": "68215e23c05b3247b0350f754890d4cd",
"assets/assets/images/25.webp": "cedf18e70efa1a036ca6dacfd6fad8a4",
"assets/assets/images/26.webp": "0735e8d84026c2f3063d6e6908c71ef3",
"assets/assets/images/3.webp": "dd23f2e7280fc834208c6a68aa51e8c8",
"assets/assets/images/4.webp": "e55488fb621580b65654add375075421",
"assets/assets/images/5.webp": "be063a1f6a4c8fe3cdba14d89e67f799",
"assets/assets/images/6.webp": "1147d4723a2f4ee7bab7a83995871171",
"assets/assets/images/7.webp": "df253bf3572386b2d1e4190dc8bdf035",
"assets/assets/images/8.webp": "ac10e9bd9872db8127a16d0e70122aea",
"assets/assets/images/9.webp": "b429e851ad1cbab6f8c17ac1dfdfc62e",
"assets/assets/images/DS-2CE56D0T-IRPFC.webp": "4ac52b4a71f8899fc6b0d091a72ece8a",
"assets/assets/images/IDS7104HQHIM1S2.webp": "03866216919a46aebce08b068f7f610c",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "05761db88de88a3b5f8e043e087800bf",
"assets/NOTICES": "2abcb68bcc41e2929a42b58d7ca462a5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00a0d5a58ed34a52b40eb372392a8b98",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "0d617e9389743f56e974b9afd1c7589f",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "a9836feb35cc91acb57f43b558685ad4",
"icons/Icon-192.png": "0d617e9389743f56e974b9afd1c7589f",
"icons/Icon-512.png": "0d617e9389743f56e974b9afd1c7589f",
"icons/Icon-maskable-192.png": "0d617e9389743f56e974b9afd1c7589f",
"icons/Icon-maskable-512.png": "0d617e9389743f56e974b9afd1c7589f",
"index.html": "12868310ccea2aa77de6f2e7dbaa69ab",
"/": "12868310ccea2aa77de6f2e7dbaa69ab",
"main.dart.js": "2a0c88de75c40b85516284e6b23fbe80",
"main.dart.js_1.part.js": "a0519d1f97851f28d65ce51d3a732fce",
"main.dart.js_2.part.js": "21b5ce42e263ab2a50353fdf4b4b74d8",
"main.dart.js_3.part.js": "d0bb315f0037f25ff59908fb2674724f",
"manifest.json": "ce2badc2c61625c9fe0a4bfca2a770fc",
"version.json": "8fd6379f9389aa1edff8f88c2112b914"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
