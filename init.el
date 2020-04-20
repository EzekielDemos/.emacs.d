(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(add-to-list 'package-archives '("elpa-popkit" . "http://elpa.popkit.org/"))
;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)


;;; load init files
(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/init/self")
(load-directory "~/.emacs.d/init/projectile")
(load-directory "~/.emacs.d/init/codmode")
(load-directory "~/.emacs.d/init/scheme")
(load-directory "~/.emacs.d/init/format")
(load-directory "~/.emacs.d/init/company")
(load-directory "~/.emacs.d/init/manage")
(load-directory "~/.emacs.d/init/productivity")
(load-directory "~/.emacs.d/init/tool")
(load-directory "~/.emacs.d/init")
(load-directory "~/.emacs.d/init/face")
;; (set-default-font "monaco-12:normal")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#21252B" "#FF6369" "#63FF63" "#E5C07B" "#00B2FF" "#36F6FF" "#27DBD8" "#ABB2BF"])
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (xj-sealing)))
 '(custom-safe-themes
   (quote
    ("2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "1af393491117ca2980ef5e9cc7cc8d15a0a27c2d94be35d286ba145adb919201" "fe317275cd87a008d9956ea4e8ea366c79718fa167cee425ae3b9d1bb60f1b59" "1a82a3ec0d4c99ee816806798944fdfa5c641d648399e6ce5044d2bd734f81d7" "9d8dd53703b0d77e74f42aa9957c807735b5b1e5572ac0c94b5a1c7a3d36109b" "cb281c2ae71a7cb51702c938bfee3af7ab512f1856001ce993b65f892c5d8ed4" "da529e28dc9e5ff3adf1514c668b942770857dbe0eef648b6aab59b547c93aef" "d4f66ddf7660d08cbff1fefda67d65c17b989f157260de7edaf937e1a9324f7b" "c9f218af47899192194103897c2f83a0838ef9e82ec383d0b98917c7b2fc5ed7" "06c3cf4acc7fce781ef82005a400bb3abab6c0e5d8141e1b56c6abda22612589" "26a9dae170ee4fbb50bccbfaaeeace1d5f8d1355f19f85c721706a6e1447f329" "e5949fa0e31420298661d656ef6ff48f150be36e1b7fbab45d66c32729b7d88b" "c25d8fd3acdd9e7adbc93a48775815e874caa9d4e017c1037dc381d17540afc2" "751e2a4209a6119d3ff997f7612a966b19457770ca69e31803bea0ab05179a13" "b20df4058dd4c597de781771e5578bbd6583db2f85962078a5ff063a1f7c2396" "2ce93a05e456edef903f0ac9fcf63e624fba2ca87d606fc891238cca96c15dad" "7f37a562ee530500a330d8f8863b2ff75d83e93e42ffc58658d660cebb1aef22" "d5258cbaae0807795f4e58b778c621dbb6e916b3e61b12438a757a4c73589298" "1cb894373391f59186f1f7e3be48a29cd7b4512ebf9048a53db206f8e27f7fad" "2b5b097eb14b6826a30059d437335fd1cd10e08df4596df8b2706cb9ef597e35" "0211b67baf59aec8501dac8af5c9fc89a2eb9f0e18a48b88db36315c77e66963" "5acc36739a7149b6a511d0b448777fce0296515d03e0bebda1ad2b0076913c07" "686f6f868093655f33c31c44299bc21cea947563764b16693cb66d1387d62615" "b083e5e6c65d370987368198e89b7162983c68ff8dd23c33c87fe875b9729f64" "5c03e272514909a1dc5e57308f46cf32d07c385a265bc56315b5f12782e46f5c" "a93c3c97f70ff668a6bfda826702ec1f1618dbd9b0c7e15e8780f82346f179aa" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "50c026ab775c762b189f2c3d48ce5f763c51ff705c7f2080e6c061f457d3178e" "1e2fe3d7e49c9310b73fdf3f30cf5f35b87c725e5ff388a25d2888d503dd2c0e" "f24bb71d245b153ab783e049639894cf77630164a6c7868dc9ee2a520b837212" "362263ebc0e0a019520ad243e85c177ada772a22b37ad4489dcc1abb6612d170" "73666ec259f08fb8050b855292467108e6f4458c8c42f0f013f68ffb38d2b4f6" "3c737164ffa8a9b81b5d2667e0cacb4d17f47faaf3dc41976fc86650ce652b2d" "1a1e80d6b50e66ff2fbe18f1ef6bb779d60df2c43da55882c03f26f142da1505" "6c2ccb90f297cc4504d8803772f0ee9013fc952d198e595b9b04d1694ebb3e5e" "d6071e35167ab7d9d7d6115be53bf1570ef2211383f31bc75c2f673168ef7cd1" "da0df9bd1887b47500814d62751cf63789ab6fffa51baaf09692b9d7756a136a" "cd3611b2542f0e446db28c4716eeeec6e448cfbe2b64555228588316e613c198" "72879220090640c8f90dcc95f332d3353cdbf35b165f0701a24fe307f9bf2054" "2d04a1840573b19a023e0982ae9f7461653dfcd87e3522d264e07d07238f8e49" "1bc369d7b0bc67e1f7a1123f237dc2724e4dd0e717cbac04ecf4dd4cbc8eda26" "080d0ac79ba3962c5833946d4e26b250d3134399c68d287080e51fb56c2cb832" "05d4d8de0edef450ad728e7235b31b6c5c9c9cab401d12a37c5af5b1a46cc34a" "0d51dbb74a4af1005678a86368d98d90104fe0d382596fe3196a325604f5bb9f" "93b9507de6516b2bfb29a3f3ea64205b73be5dea278b5204ddb99440067627c1" "5bc2515f65ba9a3d7f07840373e79ee9d22ab8cd9dc6f7158c14f3abc635086b" "62a2434a787c1cce10a471ac7f5636f037cdc93c1aaa8f9695e0f5f367820826" "428386a8518b1c54d62409db9fd0f6a85c8114a01698c3271a4fcb549f16487d" "cbabe0df3f4a614c3ab97de5c16a37b557e547d763a9c19683fbba95966fde6f" "954aead0c9f875f2511dd88c032e10a3e91c24ef82ddf675269a6f82776f2195" "f70ea4b8f578154a9a75016fb1a861461e6ffd44986e59e613a6b21353b9a38f" "7e500803ed9ded6cec0a9ed8b8b46cbdcd51d03217b2cfd6e7ca3769a799539d" "6cc4482965b6a351583d0414d009f6bd35db3106b75a9c78fee3b2348233748c" "87ce1f40ec77f0b6a39330f037f6b62fae27489f8d93616ffeb9eee8dc2a3101" "59a04be7ee552d69cac00cd5bf6e54b2b27a4ebc79ca25367c4482af67e8b71e" "6177a2be6ad2717cdd1c215d1d80b06d9b4683204275ef59c5a2ce09fac836dd" "d6bdb3bbd69003625da8ba1f98fe45c89ff2316ea08d163dd9cdb23fcff7a057" "7bd0314b1f4b555c3f6e21eabe45733b306d1b0ff89ceb5f2c5df1b8f9eb7d6d" "3d00d6d02151e77d893e20685ce06fe2b59f79a5ff05991649a7f9e4fdd6c613" "8dc11468dcdd676b859da56de259654cf7c9b3a75d2ae6cf0406205ada942b89" "60bdf53536442d13479cf05af92804c0650f6f8e72ce3f858607cf1dc8bec0c1" "94200fd17bffd9fd6acb0cb654bdd02ff9eb660bcc3a45bc223ab06bc18d1518" "e4bf7d90c08515381d43cbdfc4bdb30b5c7396316f22e980dd3f6591350f2676" "78bd321ae7b50977878e63b064a3ae15e941228ed4ba8f478902ed8f2b9cef76" "6094f76ca62b4b60c9f69730eaf6ed7258fe8a60e60bea97b1eb2b081aed8bdd" "452499bc7b809b7bac7f808ebbb86b3a80722b7308400b23410bb2a6e82104bd" "e5780834cd36135d2dc399412797a3866b0f209f5a715e70721318a2f043bffa" "07f1b92edc9df2baaf9e00a2fb5bc01393160dc5ee2a20e0d46eca89a635ea78" "19963609b2ad3579b4ce64be621810bc4df258ef8294e171913fe9a27a125bbc" "80b3d179e96e56635320ddeac62af6f2fd4e09567c92bac06701b0cbc4c46784" "516c84d9ccbbf4d6545a06f6536469ecc83ea26bc646d0a993b6d5e9bb175394" "1cf46822907d14fcb273aad743747081c6d9f1395959493cf24c0fbb7c7a31be" "ea71faa917045669be7b7450930b59460e61816a59c1d4026acba806951e194c" "acfac6b14461a344f97fad30e2362c26a3fe56a9f095653832d8fc029cb9d05c" "e396098fd5bef4f0dd6cedd01ea48df1ecb0554d8be0d8a924fb1d926f02f90f" "8e6323697e014f792b6774a721fabee67c4806664202846db26f94acfd0d8b25" "09994fd1df163f01fcba7a274b687a0a0107a67f52b0ba968e550bae86baa081" "7c33a88a4effb129108ad22c22cf409ade3c140a5718d886058d1fec7b48be71" "06d026a887ddea93911e1e3576c3712093aacf12bb64fc06a010e186f2321b7d" "690fc20e0a7ecf9ea166c69ae17ef4da18b4dcd15af74be2d168cdc19eb3001d" "9140f9f8962e1c06e9821a55e20c3793a4282ae0de94fa645ff644d7bdd6933e" "d9822cba5234e6284fb80ad4d84e6c0d8f061949a453cd37e8de5329e0bfe818" "98531067f5d659e2438517d064f3b266e2a7a92ceaf1edb88725e8895808e11f" "7d4dc95606897900c438687879fc01cfdd3704909f80402fe2655569becad40d" "4588e2ea77d79a86b53526a896ce8ceb037980db42da6e0b5d8983a641919d30" "33783ba427ce2e336de385b9f026829bb63cf4e55660ee0a85afe22c641364ff" "9a6059e71040799f15b9e355f59c4bb0e6880a5e5a2a2a609121c6656d9a343b" "7b33755bad466b492f85da7169b2e881ee7376397528b72e9d074b0a9361f16b" "2b3e4edb39563f16b03cff6017dd04f1e348ad37e7e5eb3b160f6459b705935e" "f6cf8d3c9075def2261f2506288925cc5d80d30eb7985d15b022142039e095ef" "adf5275cc3264f0a938d97ded007c82913906fc6cd64458eaae6853f6be287ce" "e27ba8895ec03fb6e76127c5827c6e4b94b7917bcd7bf4cffc2adf3efbd45ecb" "bcc1ca24b07b11381f7e15aa4f7936a3bb9afaa06422912ea4a893a47e93948a" default)))
 '(fci-rule-color "#3E4451")
 '(indicate-buffer-boundaries (quote left))
 '(package-selected-packages
   (quote
    (go-mode evil-magit doxymacs editorconfig edit-indirect tide helm-open-github ace-jump-mode dumb-jump switch-window browse-at-remote yaml-mode ws-butler web-mode use-package undo-tree smartparens slime slim-mode scss-mode rvm robe region-bindings-mode rainbow-delimiters projectile-rails pinyin-search phi-search paredit multiple-cursors micgoline markdown-mode magit js2-mode indent-guide helm-themes helm-projectile helm-descbinds haml-mode gruvbox-theme geiser expand-region exec-path-from-shell diff-hl company coffee-mode circadian chicken-scheme cal-china-x bing-dict auto-package-update aggressive-indent)))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#458588"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#b16286"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#8ec07c"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#d65d0e"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark cyan"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "DeepPink2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "forest green"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark red")))))
