'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "2189a91704d1c2055c31a5d0d1fc4406",
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
"flutter_bootstrap.js": "e1ff13211a99b67fdbf92663d422395d",
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
