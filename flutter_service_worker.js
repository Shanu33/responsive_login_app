'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c62c438ff65777126de5272b4d3e54a9",
"assets/AssetManifest.bin.json": "02f2a5234bc919f8aa87bdd6d4cfa48d",
"assets/AssetManifest.json": "6a027e8a7870aa377d7eff6978b91b63",
"assets/assets/Fonts/BBAnonym.ttf": "d8eeb3dda8c5f6d5321f5fbfb3281688",
"assets/assets/Fonts/BBAnonymPro-Light.ttf": "55db3d6b121384163cead27a6b695e4c",
"assets/assets/Fonts/BBAnonymPro-Regular.ttf": "1b49357e58cf62ff456ab76081935a18",
"assets/assets/Fonts/Roboto-Regular.ttf": "5673da52c98bb6cb33ada5aaf649703e",
"assets/assets/Fonts/SF-Pro-Display-Regular.ttf": "d704bcd64b0f4fa155e6bd7debacc6c4",
"assets/assets/Fonts/SF_Pro_Rounded.ttf": "400bd9f855cefe6a13b02eb55a31d511",
"assets/assets/Image/Art%2520(1).png": "5904d5b5507de8190aabe827c1d71987",
"assets/assets/Image/Art%2520(2).png": "6fa478431e7df077fa484a9eda66c4ac",
"assets/assets/Image/Art%2520(3).png": "09aba7e41e48c841d2540a7bf85eca3f",
"assets/assets/Image/Art.png": "54e917b230d83d8ce05a08d978f536f7",
"assets/assets/Image/Facebook%2520Icon.svg": "e095b053a10c0bc4dde45e7322032f92",
"assets/assets/Image/flags/Flag_of_the_Taliban.svg": "c6e69a17c5b47086b1d9cb33c556e23b",
"assets/assets/Image/flags/IAA.svg": "9453f76ed0f95b255c9fc939eadb7764",
"assets/assets/Image/flags/iq.svg": "b8b3e7b8c0ab2c1eb091693a2ec71872",
"assets/assets/Image/flags/iqLandScap.svg": "5441361a433c5d9ce79dfe46a76e1550",
"assets/assets/Image/flags/ir.svg": "de7a3ec669deb12027665c023fb2dc6b",
"assets/assets/Image/flags/irLandScap.svg": "1c17633a57119118cba36d67dd47a237",
"assets/assets/Image/flags/sa.svg": "6db30b0ed0b5ec52fbd3428545731857",
"assets/assets/Image/flags/saLandScap.svg": "08669ca0524b06ad3f00672837bbd4cf",
"assets/assets/Image/Flower_half.jpg": "569ffaa419807ffdca9b085de967f2e4",
"assets/assets/Image/fulFlower.png": "51ec13d3295280730cd1bf229e09cc71",
"assets/assets/Image/google_icon.svg": "5d51befa2cd6306b139d5c67646333a0",
"assets/assets/Image/half_frame.png": "74753ce6ee80f44b91c28d8fb9f2e10b",
"assets/assets/Image/half_hand.png": "e8764496779fa9895a6d73f5012de61b",
"assets/assets/Image/half_heart.png": "28cf40c3d021c6fa65ceb75ef3be0e98",
"assets/assets/Image/half_opequw.png": "51baf755a99286fdc9f3f83970c1b9cf",
"assets/assets/Image/hi.gif": "1fd2a83fe40214481c2e6353d64b59c0",
"assets/assets/Image/hiFi.gif": "fb6a73e7e711150e155cad7125d8285f",
"assets/assets/Image/Painting_Of_Flower_Bouquet.jpg": "58fe64c83475938258c6f01e3e481743",
"assets/assets/Image/sqrHiFi.gif": "583bab4e80c7685df36d0df03e33f20c",
"assets/FontManifest.json": "d825c4529e09fd4a2892e75359da13af",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "3876f742f29dbf45aeeadc598faf5625",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/platform_screener/assets/Images/Flower_half.jpg": "569ffaa419807ffdca9b085de967f2e4",
"assets/packages/platform_screener/assets/Images/google_icon.svg": "91d0aeb0871dc70ff7e8ba6c0f9ec690",
"assets/packages/platform_screener/assets/Images/hiFi.gif": "fb6a73e7e711150e155cad7125d8285f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "faf3737bd39a31e781c81462ad5f6b52",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "480f61894910d3889e3a7869a49daf56",
"/": "480f61894910d3889e3a7869a49daf56",
"main.dart.js": "896c954ce69e6813ca09fc6a26b6e6f6",
"manifest.json": "37eebc6092bb2ea7cf6af090ec1990ba",
"version.json": "e64c0e785829ef3217f72b276d591079"};
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
