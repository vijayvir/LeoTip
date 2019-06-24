
import UIKit

enum LeoFontNames  {
    case copperplate(Copperplate)
    case heiti_SC(Heiti_SC)
    case apple_SD_Gothic_Neo(Apple_SD_Gothic_Neo)
    case thonburi(Thonburi)
    case gill_Sans(Gill_Sans)
    case marker_Felt(Marker_Felt)
    case hiragino_Maru_Gothic_ProN(Hiragino_Maru_Gothic_ProN)
    case courier_New(Courier_New)
    case kohinoor_Telugu(Kohinoor_Telugu)
    case heiti_TC(Heiti_TC)
    case avenir_Next_Condensed(Avenir_Next_Condensed)
    case tamil_Sangam_MN(Tamil_Sangam_MN)
    case helvetica_Neue(Helvetica_Neue)
    case gurmukhi_MN(Gurmukhi_MN)
    case georgia(Georgia)
    case times_New_Roman(Times_New_Roman)
    case sinhala_Sangam_MN(Sinhala_Sangam_MN)
    case arial_Rounded_MT_Bold(Arial_Rounded_MT_Bold)
    case kailasa(Kailasa)
    case kohinoor_Devanagari(Kohinoor_Devanagari)
    case kohinoor_Bangla(Kohinoor_Bangla)
    case chalkboard_SE(Chalkboard_SE)
    case apple_Color_Emoji(Apple_Color_Emoji)
    case pingFang_TC(PingFang_TC)
    case gujarati_Sangam_MN(Gujarati_Sangam_MN)
    case geeza_Pro(Geeza_Pro)
    case damascus(Damascus)
    case noteworthy(Noteworthy)
    case avenir(Avenir)
    case mishafi(Mishafi)
    case academy_Engraved_LET(Academy_Engraved_LET)
    case futura(Futura)
    case party_LET(Party_LET)
    case kannada_Sangam_MN(Kannada_Sangam_MN)
    case arial_Hebrew(Arial_Hebrew)
    case farah(Farah)
    case arial(Arial)
    case chalkduster(Chalkduster)
    case kefa(Kefa)
    case hoefler_Text(Hoefler_Text)
    case optima(Optima)
    case palatino(Palatino)
    case malayalam_Sangam_MN(Malayalam_Sangam_MN)
    case al_Nile(Al_Nile)
    case lao_Sangam_MN(Lao_Sangam_MN)
    case bradley_Hand(Bradley_Hand)
    case hiragino_Mincho_ProN(Hiragino_Mincho_ProN)
    case pingFang_HK(PingFang_HK)
    case helvetica(Helvetica)
    case courier(Courier)
    case cochin(Cochin)
    case trebuchet_MS(Trebuchet_MS)
    case devanagari_Sangam_MN(Devanagari_Sangam_MN)
    case oriya_Sangam_MN(Oriya_Sangam_MN)
    case rockwell(Rockwell)
    case snell_Roundhand(Snell_Roundhand)
    case zapf_Dingbats(Zapf_Dingbats)
    case bodoni_72(Bodoni_72)
    case verdana(Verdana)
    case american_Typewriter(American_Typewriter)
    case avenir_Next(Avenir_Next)
    case baskerville(Baskerville)
    case khmer_Sangam_MN(Khmer_Sangam_MN)
    case didot(Didot)
    case savoye_LET(Savoye_LET)
    case bodoni_Ornaments(Bodoni_Ornaments)
    case symbol(Symbol)
    case charter(Charter)
    case menlo(Menlo)
    case noto_Nastaliq_Urdu(Noto_Nastaliq_Urdu)
    case bodoni_72_Smallcaps(Bodoni_72_Smallcaps)
    case dIN_Alternate(DIN_Alternate)
    case papyrus(Papyrus)
    case hiragino_Sans(Hiragino_Sans)
    case pingFang_SC(PingFang_SC)
    case myanmar_Sangam_MN(Myanmar_Sangam_MN)
    case noto_Sans_Chakma(Noto_Sans_Chakma)
    case zapfino(Zapfino)
    case telugu_Sangam_MN(Telugu_Sangam_MN)
    case bodoni_72_Oldstyle(Bodoni_72_Oldstyle)
    case euphemia_UCAS(Euphemia_UCAS)
    case bangla_Sangam_MN(Bangla_Sangam_MN)
    case dIN_Condensed(DIN_Condensed)
    enum  Copperplate : String {
        case copperplate_Light = "Copperplate-Light"
        case copperplate = "Copperplate"
        case copperplate_Bold = "Copperplate-Bold"
    }
    enum  Heiti_SC : String {
        case heiti_SC = "Heiti SC"
    }
    enum  Apple_SD_Gothic_Neo : String {
        case appleSDGothicNeo_Thin = "AppleSDGothicNeo-Thin"
        case appleSDGothicNeo_Light = "AppleSDGothicNeo-Light"
        case appleSDGothicNeo_Regular = "AppleSDGothicNeo-Regular"
        case appleSDGothicNeo_Bold = "AppleSDGothicNeo-Bold"
        case appleSDGothicNeo_SemiBold = "AppleSDGothicNeo-SemiBold"
        case appleSDGothicNeo_UltraLight = "AppleSDGothicNeo-UltraLight"
        case appleSDGothicNeo_Medium = "AppleSDGothicNeo-Medium"
    }
    enum  Thonburi : String {
        case thonburi = "Thonburi"
        case thonburi_Light = "Thonburi-Light"
        case thonburi_Bold = "Thonburi-Bold"
    }
    enum  Gill_Sans : String {
        case gillSans_Italic = "GillSans-Italic"
        case gillSans_SemiBold = "GillSans-SemiBold"
        case gillSans_UltraBold = "GillSans-UltraBold"
        case gillSans_Light = "GillSans-Light"
        case gillSans_Bold = "GillSans-Bold"
        case gillSans = "GillSans"
        case gillSans_SemiBoldItalic = "GillSans-SemiBoldItalic"
        case gillSans_BoldItalic = "GillSans-BoldItalic"
        case gillSans_LightItalic = "GillSans-LightItalic"
    }
    enum  Marker_Felt : String {
        case markerFelt_Thin = "MarkerFelt-Thin"
        case markerFelt_Wide = "MarkerFelt-Wide"
    }
    enum  Hiragino_Maru_Gothic_ProN : String {
        case hiraMaruProN_W4 = "HiraMaruProN-W4"
    }
    enum  Courier_New : String {
        case courierNewPS_ItalicMT = "CourierNewPS-ItalicMT"
        case courierNewPSMT = "CourierNewPSMT"
        case courierNewPS_BoldItalicMT = "CourierNewPS-BoldItalicMT"
        case courierNewPS_BoldMT = "CourierNewPS-BoldMT"
    }
    enum  Kohinoor_Telugu : String {
        case kohinoorTelugu_Regular = "KohinoorTelugu-Regular"
        case kohinoorTelugu_Medium = "KohinoorTelugu-Medium"
        case kohinoorTelugu_Light = "KohinoorTelugu-Light"
    }
    enum  Heiti_TC : String {
        case heiti_TC = "Heiti TC"
    }
    enum  Avenir_Next_Condensed : String {
        case avenirNextCondensed_Heavy = "AvenirNextCondensed-Heavy"
        case avenirNextCondensed_MediumItalic = "AvenirNextCondensed-MediumItalic"
        case avenirNextCondensed_Regular = "AvenirNextCondensed-Regular"
        case avenirNextCondensed_UltraLightItalic = "AvenirNextCondensed-UltraLightItalic"
        case avenirNextCondensed_Medium = "AvenirNextCondensed-Medium"
        case avenirNextCondensed_HeavyItalic = "AvenirNextCondensed-HeavyItalic"
        case avenirNextCondensed_DemiBoldItalic = "AvenirNextCondensed-DemiBoldItalic"
        case avenirNextCondensed_Bold = "AvenirNextCondensed-Bold"
        case avenirNextCondensed_DemiBold = "AvenirNextCondensed-DemiBold"
        case avenirNextCondensed_BoldItalic = "AvenirNextCondensed-BoldItalic"
        case avenirNextCondensed_Italic = "AvenirNextCondensed-Italic"
        case avenirNextCondensed_UltraLight = "AvenirNextCondensed-UltraLight"
    }
    enum  Tamil_Sangam_MN : String {
        case tamilSangamMN = "TamilSangamMN"
        case tamilSangamMN_Bold = "TamilSangamMN-Bold"
    }
    enum  Helvetica_Neue : String {
        case helveticaNeue_UltraLightItalic = "HelveticaNeue-UltraLightItalic"
        case helveticaNeue_Medium = "HelveticaNeue-Medium"
        case helveticaNeue_MediumItalic = "HelveticaNeue-MediumItalic"
        case helveticaNeue_UltraLight = "HelveticaNeue-UltraLight"
        case helveticaNeue_Italic = "HelveticaNeue-Italic"
        case helveticaNeue_Light = "HelveticaNeue-Light"
        case helveticaNeue_ThinItalic = "HelveticaNeue-ThinItalic"
        case helveticaNeue_LightItalic = "HelveticaNeue-LightItalic"
        case helveticaNeue_Bold = "HelveticaNeue-Bold"
        case helveticaNeue_Thin = "HelveticaNeue-Thin"
        case helveticaNeue_CondensedBlack = "HelveticaNeue-CondensedBlack"
        case helveticaNeue = "HelveticaNeue"
        case helveticaNeue_CondensedBold = "HelveticaNeue-CondensedBold"
        case helveticaNeue_BoldItalic = "HelveticaNeue-BoldItalic"
    }
    enum  Gurmukhi_MN : String {
        case gurmukhiMN_Bold = "GurmukhiMN-Bold"
        case gurmukhiMN = "GurmukhiMN"
    }
    enum  Georgia : String {
        case georgia_BoldItalic = "Georgia-BoldItalic"
        case georgia_Italic = "Georgia-Italic"
        case georgia = "Georgia"
        case georgia_Bold = "Georgia-Bold"
    }
    enum  Times_New_Roman : String {
        case timesNewRomanPS_ItalicMT = "TimesNewRomanPS-ItalicMT"
        case timesNewRomanPS_BoldItalicMT = "TimesNewRomanPS-BoldItalicMT"
        case timesNewRomanPS_BoldMT = "TimesNewRomanPS-BoldMT"
        case timesNewRomanPSMT = "TimesNewRomanPSMT"
    }
    enum  Sinhala_Sangam_MN : String {
        case sinhalaSangamMN_Bold = "SinhalaSangamMN-Bold"
        case sinhalaSangamMN = "SinhalaSangamMN"
    }
    enum  Arial_Rounded_MT_Bold : String {
        case arialRoundedMTBold = "ArialRoundedMTBold"
    }
    enum  Kailasa : String {
        case kailasa_Bold = "Kailasa-Bold"
        case kailasa = "Kailasa"
    }
    enum  Kohinoor_Devanagari : String {
        case kohinoorDevanagari_Regular = "KohinoorDevanagari-Regular"
        case kohinoorDevanagari_Light = "KohinoorDevanagari-Light"
        case kohinoorDevanagari_Semibold = "KohinoorDevanagari-Semibold"
    }
    enum  Kohinoor_Bangla : String {
        case kohinoorBangla_Regular = "KohinoorBangla-Regular"
        case kohinoorBangla_Semibold = "KohinoorBangla-Semibold"
        case kohinoorBangla_Light = "KohinoorBangla-Light"
    }
    enum  Chalkboard_SE : String {
        case chalkboardSE_Bold = "ChalkboardSE-Bold"
        case chalkboardSE_Light = "ChalkboardSE-Light"
        case chalkboardSE_Regular = "ChalkboardSE-Regular"
    }
    enum  Apple_Color_Emoji : String {
        case appleColorEmoji = "AppleColorEmoji"
    }
    enum  PingFang_TC : String {
        case pingFangTC_Regular = "PingFangTC-Regular"
        case pingFangTC_Thin = "PingFangTC-Thin"
        case pingFangTC_Medium = "PingFangTC-Medium"
        case pingFangTC_Semibold = "PingFangTC-Semibold"
        case pingFangTC_Light = "PingFangTC-Light"
        case pingFangTC_Ultralight = "PingFangTC-Ultralight"
    }
    enum  Gujarati_Sangam_MN : String {
        case gujaratiSangamMN = "GujaratiSangamMN"
        case gujaratiSangamMN_Bold = "GujaratiSangamMN-Bold"
    }
    enum  Geeza_Pro : String {
        case geezaPro_Bold = "GeezaPro-Bold"
        case geezaPro = "GeezaPro"
    }
    enum  Damascus : String {
        case damascusBold = "DamascusBold"
        case damascusLight = "DamascusLight"
        case damascus = "Damascus"
        case damascusMedium = "DamascusMedium"
        case damascusSemiBold = "DamascusSemiBold"
    }
    enum  Noteworthy : String {
        case noteworthy_Bold = "Noteworthy-Bold"
        case noteworthy_Light = "Noteworthy-Light"
    }
    enum  Avenir : String {
        case avenir_Oblique = "Avenir-Oblique"
        case avenir_HeavyOblique = "Avenir-HeavyOblique"
        case avenir_Heavy = "Avenir-Heavy"
        case avenir_BlackOblique = "Avenir-BlackOblique"
        case avenir_BookOblique = "Avenir-BookOblique"
        case avenir_Roman = "Avenir-Roman"
        case avenir_Medium = "Avenir-Medium"
        case avenir_Black = "Avenir-Black"
        case avenir_Light = "Avenir-Light"
        case avenir_MediumOblique = "Avenir-MediumOblique"
        case avenir_Book = "Avenir-Book"
        case avenir_LightOblique = "Avenir-LightOblique"
    }
    enum  Mishafi : String {
        case diwanMishafi = "DiwanMishafi"
    }
    enum  Academy_Engraved_LET : String {
        case academyEngravedLetPlain = "AcademyEngravedLetPlain"
    }
    enum  Futura : String {
        case futura_CondensedExtraBold = "Futura-CondensedExtraBold"
        case futura_Medium = "Futura-Medium"
        case futura_Bold = "Futura-Bold"
        case futura_CondensedMedium = "Futura-CondensedMedium"
        case futura_MediumItalic = "Futura-MediumItalic"
    }
    enum  Party_LET : String {
        case partyLetPlain = "PartyLetPlain"
    }
    enum  Kannada_Sangam_MN : String {
        case kannadaSangamMN_Bold = "KannadaSangamMN-Bold"
        case kannadaSangamMN = "KannadaSangamMN"
    }
    enum  Arial_Hebrew : String {
        case arialHebrew_Bold = "ArialHebrew-Bold"
        case arialHebrew_Light = "ArialHebrew-Light"
        case arialHebrew = "ArialHebrew"
    }
    enum  Farah : String {
        case farah = "Farah"
    }
    enum  Arial : String {
        case arial_BoldMT = "Arial-BoldMT"
        case arial_BoldItalicMT = "Arial-BoldItalicMT"
        case arial_ItalicMT = "Arial-ItalicMT"
        case arialMT = "ArialMT"
    }
    enum  Chalkduster : String {
        case chalkduster = "Chalkduster"
    }
    enum  Kefa : String {
        case kefa_Regular = "Kefa-Regular"
    }
    enum  Hoefler_Text : String {
        case hoeflerText_Italic = "HoeflerText-Italic"
        case hoeflerText_Black = "HoeflerText-Black"
        case hoeflerText_Regular = "HoeflerText-Regular"
        case hoeflerText_BlackItalic = "HoeflerText-BlackItalic"
    }
    enum  Optima : String {
        case optima_ExtraBlack = "Optima-ExtraBlack"
        case optima_BoldItalic = "Optima-BoldItalic"
        case optima_Italic = "Optima-Italic"
        case optima_Regular = "Optima-Regular"
        case optima_Bold = "Optima-Bold"
    }
    enum  Palatino : String {
        case palatino_Italic = "Palatino-Italic"
        case palatino_Roman = "Palatino-Roman"
        case palatino_BoldItalic = "Palatino-BoldItalic"
        case palatino_Bold = "Palatino-Bold"
    }
    enum  Malayalam_Sangam_MN : String {
        case malayalamSangamMN_Bold = "MalayalamSangamMN-Bold"
        case malayalamSangamMN = "MalayalamSangamMN"
    }
    enum  Al_Nile : String {
        case alNile = "AlNile"
        case alNile_Bold = "AlNile-Bold"
    }
    enum  Lao_Sangam_MN : String {
        case laoSangamMN = "LaoSangamMN"
    }
    enum  Bradley_Hand : String {
        case bradleyHandITCTT_Bold = "BradleyHandITCTT-Bold"
    }
    enum  Hiragino_Mincho_ProN : String {
        case hiraMinProN_W3 = "HiraMinProN-W3"
        case hiraMinProN_W6 = "HiraMinProN-W6"
    }
    enum  PingFang_HK : String {
        case pingFangHK_Medium = "PingFangHK-Medium"
        case pingFangHK_Thin = "PingFangHK-Thin"
        case pingFangHK_Regular = "PingFangHK-Regular"
        case pingFangHK_Ultralight = "PingFangHK-Ultralight"
        case pingFangHK_Semibold = "PingFangHK-Semibold"
        case pingFangHK_Light = "PingFangHK-Light"
    }
    enum  Helvetica : String {
        case helvetica_Oblique = "Helvetica-Oblique"
        case helvetica_BoldOblique = "Helvetica-BoldOblique"
        case helvetica = "Helvetica"
        case helvetica_Light = "Helvetica-Light"
        case helvetica_Bold = "Helvetica-Bold"
        case helvetica_LightOblique = "Helvetica-LightOblique"
    }
    enum  Courier : String {
        case courier_BoldOblique = "Courier-BoldOblique"
        case courier_Oblique = "Courier-Oblique"
        case courier = "Courier"
        case courier_Bold = "Courier-Bold"
    }
    enum  Cochin : String {
        case cochin_Italic = "Cochin-Italic"
        case cochin_Bold = "Cochin-Bold"
        case cochin = "Cochin"
        case cochin_BoldItalic = "Cochin-BoldItalic"
    }
    enum  Trebuchet_MS : String {
        case trebuchetMS_Bold = "TrebuchetMS-Bold"
        case trebuchetMS_Italic = "TrebuchetMS-Italic"
        case trebuchet_BoldItalic = "Trebuchet-BoldItalic"
        case trebuchetMS = "TrebuchetMS"
    }
    enum  Devanagari_Sangam_MN : String {
        case devanagariSangamMN = "DevanagariSangamMN"
        case devanagariSangamMN_Bold = "DevanagariSangamMN-Bold"
    }
    enum  Oriya_Sangam_MN : String {
        case oriyaSangamMN = "OriyaSangamMN"
        case oriyaSangamMN_Bold = "OriyaSangamMN-Bold"
    }
    enum  Rockwell : String {
        case rockwell_Italic = "Rockwell-Italic"
        case rockwell_Regular = "Rockwell-Regular"
        case rockwell_Bold = "Rockwell-Bold"
        case rockwell_BoldItalic = "Rockwell-BoldItalic"
    }
    enum  Snell_Roundhand : String {
        case snellRoundhand = "SnellRoundhand"
        case snellRoundhand_Bold = "SnellRoundhand-Bold"
        case snellRoundhand_Black = "SnellRoundhand-Black"
    }
    enum  Zapf_Dingbats : String {
        case zapfDingbatsITC = "ZapfDingbatsITC"
    }
    enum  Bodoni_72 : String {
        case bodoniSvtyTwoITCTT_Bold = "BodoniSvtyTwoITCTT-Bold"
        case bodoniSvtyTwoITCTT_BookIta = "BodoniSvtyTwoITCTT-BookIta"
        case bodoniSvtyTwoITCTT_Book = "BodoniSvtyTwoITCTT-Book"
    }
    enum  Verdana : String {
        case verdana_Italic = "Verdana-Italic"
        case verdana = "Verdana"
        case verdana_Bold = "Verdana-Bold"
        case verdana_BoldItalic = "Verdana-BoldItalic"
    }
    enum  American_Typewriter : String {
        case americanTypewriter_CondensedBold = "AmericanTypewriter-CondensedBold"
        case americanTypewriter_Condensed = "AmericanTypewriter-Condensed"
        case americanTypewriter_CondensedLight = "AmericanTypewriter-CondensedLight"
        case americanTypewriter = "AmericanTypewriter"
        case americanTypewriter_Bold = "AmericanTypewriter-Bold"
        case americanTypewriter_Semibold = "AmericanTypewriter-Semibold"
        case americanTypewriter_Light = "AmericanTypewriter-Light"
    }
    enum  Avenir_Next : String {
        case avenirNext_Medium = "AvenirNext-Medium"
        case avenirNext_DemiBoldItalic = "AvenirNext-DemiBoldItalic"
        case avenirNext_DemiBold = "AvenirNext-DemiBold"
        case avenirNext_HeavyItalic = "AvenirNext-HeavyItalic"
        case avenirNext_Regular = "AvenirNext-Regular"
        case avenirNext_Italic = "AvenirNext-Italic"
        case avenirNext_MediumItalic = "AvenirNext-MediumItalic"
        case avenirNext_UltraLightItalic = "AvenirNext-UltraLightItalic"
        case avenirNext_BoldItalic = "AvenirNext-BoldItalic"
        case avenirNext_Heavy = "AvenirNext-Heavy"
        case avenirNext_Bold = "AvenirNext-Bold"
        case avenirNext_UltraLight = "AvenirNext-UltraLight"
    }
    enum  Baskerville : String {
        case baskerville_SemiBoldItalic = "Baskerville-SemiBoldItalic"
        case baskerville_SemiBold = "Baskerville-SemiBold"
        case baskerville_BoldItalic = "Baskerville-BoldItalic"
        case baskerville = "Baskerville"
        case baskerville_Bold = "Baskerville-Bold"
        case baskerville_Italic = "Baskerville-Italic"
    }
    enum  Khmer_Sangam_MN : String {
        case khmerSangamMN = "KhmerSangamMN"
    }
    enum  Didot : String {
        case didot_Bold = "Didot-Bold"
        case didot = "Didot"
        case didot_Italic = "Didot-Italic"
    }
    enum  Savoye_LET : String {
        case savoyeLetPlain = "SavoyeLetPlain"
    }
    enum  Bodoni_Ornaments : String {
        case bodoniOrnamentsITCTT = "BodoniOrnamentsITCTT"
    }
    enum  Symbol : String {
        case symbol = "Symbol"
    }
    enum  Charter : String {
        case charter_BlackItalic = "Charter-BlackItalic"
        case charter_Bold = "Charter-Bold"
        case charter_Roman = "Charter-Roman"
        case charter_Black = "Charter-Black"
        case charter_BoldItalic = "Charter-BoldItalic"
        case charter_Italic = "Charter-Italic"
    }
    enum  Menlo : String {
        case menlo_BoldItalic = "Menlo-BoldItalic"
        case menlo_Bold = "Menlo-Bold"
        case menlo_Italic = "Menlo-Italic"
        case menlo_Regular = "Menlo-Regular"
    }
    enum  Noto_Nastaliq_Urdu : String {
        case notoNastaliqUrdu = "NotoNastaliqUrdu"
    }
    enum  Bodoni_72_Smallcaps : String {
        case bodoniSvtyTwoSCITCTT_Book = "BodoniSvtyTwoSCITCTT-Book"
    }
    enum  DIN_Alternate : String {
        case dINAlternate_Bold = "DINAlternate-Bold"
    }
    enum  Papyrus : String {
        case papyrus_Condensed = "Papyrus-Condensed"
        case papyrus = "Papyrus"
    }
    enum  Hiragino_Sans : String {
        case hiraginoSans_W3 = "HiraginoSans-W3"
        case hiraginoSans_W6 = "HiraginoSans-W6"
    }
    enum  PingFang_SC : String {
        case pingFangSC_Medium = "PingFangSC-Medium"
        case pingFangSC_Semibold = "PingFangSC-Semibold"
        case pingFangSC_Light = "PingFangSC-Light"
        case pingFangSC_Ultralight = "PingFangSC-Ultralight"
        case pingFangSC_Regular = "PingFangSC-Regular"
        case pingFangSC_Thin = "PingFangSC-Thin"
    }
    enum  Myanmar_Sangam_MN : String {
        case myanmarSangamMN = "MyanmarSangamMN"
        case myanmarSangamMN_Bold = "MyanmarSangamMN-Bold"
    }
    enum  Noto_Sans_Chakma : String {
        case notoSansChakma_Regular = "NotoSansChakma-Regular"
    }
    enum  Zapfino : String {
        case zapfino = "Zapfino"
    }
    enum  Telugu_Sangam_MN : String {
        case telugu_Sangam_MN = "Telugu Sangam MN"
    }
    enum  Bodoni_72_Oldstyle : String {
        case bodoniSvtyTwoOSITCTT_BookIt = "BodoniSvtyTwoOSITCTT-BookIt"
        case bodoniSvtyTwoOSITCTT_Book = "BodoniSvtyTwoOSITCTT-Book"
        case bodoniSvtyTwoOSITCTT_Bold = "BodoniSvtyTwoOSITCTT-Bold"
    }
    enum  Euphemia_UCAS : String {
        case euphemiaUCAS = "EuphemiaUCAS"
        case euphemiaUCAS_Italic = "EuphemiaUCAS-Italic"
        case euphemiaUCAS_Bold = "EuphemiaUCAS-Bold"
    }
    enum  Bangla_Sangam_MN : String {
        case bangla_Sangam_MN = "Bangla Sangam MN"
    }
    enum  DIN_Condensed : String {
        case dINCondensed_Bold = "DINCondensed-Bold"
    }
}
