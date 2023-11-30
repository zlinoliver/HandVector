//
//  Codable+Extensions.swift
//  HandVector
//
//  Created by 许同学 on 2023/11/30.
//

import Foundation


extension Encodable {
    func toJson(encoding: String.Encoding = .utf8) -> String? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return String(data: data, encoding: encoding)
    }
}
extension String {
    func toModel<T: Decodable>(encoding: String.Encoding = .utf8) -> T? {
        guard let data = self.data(using: encoding) else { return nil }
        return try? JSONDecoder().decode(T.self, from: data)
    }
}

let leftRaw = """
"{\"allVectors\":[\"middleFingerIntermediateBase\",{\"normalizedVector\":[0.8794909,0.4622747,0.11312778],\"from\":{\"position\":[0.09886531,-0.0012815591,-0.0041266363],\"name\":\"middleFingerKnuckle\",\"isTracked\":true},\"to\":{\"position\":[0.14478105,0.0228525,0.0017794468],\"name\":\"middleFingerIntermediateBase\",\"isTracked\":true},\"vector\":[0.045915745,0.02413406,0.005906083]},\"ringFingerTip\",{\"vector\":[-0.017090864,-0.013391031,0.00080861524],\"from\":{\"name\":\"ringFingerIntermediateTip\",\"position\":[0.079307556,0.04436687,0.014263906],\"isTracked\":true},\"to\":{\"position\":[0.06221669,0.03097584,0.015072521],\"name\":\"ringFingerTip\",\"isTracked\":true},\"normalizedVector\":[-0.78661144,-0.6163256,0.037216723]},\"thumbKnuckle\",{\"normalizedVector\":[0.72799784,0.34267652,-0.5937947],\"vector\":[0.025124352,0.011826307,-0.020492792],\"from\":{\"name\":\"wrist\",\"position\":[0,0,0],\"isTracked\":true},\"to\":{\"name\":\"thumbKnuckle\",\"isTracked\":true,\"position\":[0.025124352,0.011826307,-0.020492792]}},\"middleFingerMetacarpal\",{\"vector\":[0.029068705,-0.00042384863,-0.0045579933],\"to\":{\"isTracked\":true,\"position\":[0.029068705,-0.00042384863,-0.0045579933],\"name\":\"middleFingerMetacarpal\"},\"from\":{\"isTracked\":true,\"name\":\"wrist\",\"position\":[0,0,0]},\"normalizedVector\":[0.9878264,-0.014403424,-0.15489188]},\"ringFingerMetacarpal\",{\"to\":{\"isTracked\":true,\"position\":[0.029131092,0.0010114312,0.009171229],\"name\":\"ringFingerMetacarpal\"},\"from\":{\"name\":\"wrist\",\"isTracked\":true,\"position\":[0,0,0]},\"vector\":[0.029131092,0.0010114312,0.009171229],\"normalizedVector\":[0.9533235,0.033099383,0.30013114]},\"indexFingerIntermediateTip\",{\"from\":{\"name\":\"indexFingerIntermediateBase\",\"isTracked\":true,\"position\":[0.14114375,0.021780364,-0.018915178]},\"normalizedVector\":[0.88621926,0.40716285,0.22098391],\"vector\":[0.022973731,0.010555007,0.005728633],\"to\":{\"isTracked\":true,\"position\":[0.16411749,0.03233537,-0.013186545],\"name\":\"indexFingerIntermediateTip\"}},\"indexFingerTip\",{\"vector\":[0.021772176,0.007905196,0.005052197],\"from\":{\"isTracked\":true,\"position\":[0.16411749,0.03233537,-0.013186545],\"name\":\"indexFingerIntermediateTip\"},\"to\":{\"name\":\"indexFingerTip\",\"isTracked\":true,\"position\":[0.18588966,0.040240567,-0.008134348]},\"normalizedVector\":[0.9183675,0.3334474,0.21310563]},\"littleFingerIntermediateTip\",{\"vector\":[-0.019489788,0.0041417517,-0.005395729],\"normalizedVector\":[-0.94415057,0.20064032,-0.26138717],\"to\":{\"isTracked\":true,\"name\":\"littleFingerIntermediateTip\",\"position\":[0.06732582,0.040405843,0.025757967]},\"from\":{\"name\":\"littleFingerIntermediateBase\",\"position\":[0.08681561,0.03626409,0.031153696],\"isTracked\":true}},\"littleFingerMetacarpal\",{\"normalizedVector\":[0.7445906,0.06458321,0.6643899],\"to\":{\"position\":[0.028033648,0.0024315417,0.025014114],\"isTracked\":true,\"name\":\"littleFingerMetacarpal\"},\"from\":{\"name\":\"wrist\",\"position\":[0,0,0],\"isTracked\":true},\"vector\":[0.028033648,0.0024315417,0.025014114]},\"thumbIntermediateBase\",{\"normalizedVector\":[0.6675243,0.1012279,-0.7376751],\"from\":{\"name\":\"thumbKnuckle\",\"position\":[0.025124352,0.011826307,-0.020492792],\"isTracked\":true},\"vector\":[0.034937285,0.0052981265,-0.03860888],\"to\":{\"isTracked\":true,\"position\":[0.060061637,0.017124433,-0.05910167],\"name\":\"thumbIntermediateBase\"}},\"littleFingerKnuckle\",{\"vector\":[0.05681051,-0.0008150309,0.0134644285],\"from\":{\"name\":\"littleFingerMetacarpal\",\"position\":[0.028033648,0.0024315417,0.025014114],\"isTracked\":true},\"to\":{\"isTracked\":true,\"name\":\"littleFingerKnuckle\",\"position\":[0.08484416,0.0016165108,0.038478542]},\"normalizedVector\":[0.97294974,-0.013958405,0.23059487]},\"middleFingerTip\",{\"vector\":[0.021468267,0.011835799,0.0038903398],\"to\":{\"name\":\"middleFingerTip\",\"isTracked\":true,\"position\":[0.19487889,0.04777964,0.0106563205]},\"from\":{\"name\":\"middleFingerIntermediateTip\",\"position\":[0.17341062,0.03594384,0.0067659807],\"isTracked\":true},\"normalizedVector\":[0.8649057,0.47683635,0.15673259]},\"ringFingerIntermediateTip\",{\"vector\":[-0.029022,0.0035975985,-0.0013993979],\"normalizedVector\":[-0.99127,0.122878894,-0.04779757],\"to\":{\"isTracked\":true,\"position\":[0.079307556,0.04436687,0.014263906],\"name\":\"ringFingerIntermediateTip\"},\"from\":{\"isTracked\":true,\"position\":[0.10832956,0.04076927,0.015663303],\"name\":\"ringFingerIntermediateBase\"}},\"forearmWrist\",{\"normalizedVector\":[0.9251365,-0.3752667,-0.05742324],\"vector\":[0.26476347,-0.10739703,-0.016433874],\"from\":{\"name\":\"forearmArm\",\"isTracked\":true,\"position\":[-0.26476353,0.10739697,0.016433788]},\"to\":{\"position\":[-4.5634806e-08,-5.9604645e-08,-8.568168e-08],\"isTracked\":true,\"name\":\"forearmWrist\"}},\"ringFingerIntermediateBase\",{\"vector\":[0.011912428,0.040660497,-0.0031963624],\"from\":{\"position\":[0.09641713,0.00010877621,0.018859666],\"name\":\"ringFingerKnuckle\",\"isTracked\":true},\"to\":{\"isTracked\":true,\"position\":[0.10832956,0.04076927,0.015663303],\"name\":\"ringFingerIntermediateBase\"},\"normalizedVector\":[0.2803585,0.9569431,-0.075226255]},\"thumbIntermediateTip\",{\"normalizedVector\":[0.910347,0.08915865,-0.40412763],\"from\":{\"name\":\"thumbIntermediateBase\",\"isTracked\":true,\"position\":[0.060061637,0.017124433,-0.05910167]},\"to\":{\"name\":\"thumbIntermediateTip\",\"position\":[0.09031551,0.020087473,-0.072532184],\"isTracked\":true},\"vector\":[0.030253876,0.00296304,-0.013430513]},\"wrist\",{\"to\":{\"name\":\"wrist\",\"isTracked\":true,\"position\":[0,0,0]},\"from\":{\"name\":\"forearmArm\",\"position\":[-0.26476353,0.10739697,0.016433788],\"isTracked\":true},\"vector\":[0.26476353,-0.10739697,-0.016433788],\"normalizedVector\":[0.9251366,-0.37526643,-0.057422936]},\"indexFingerMetacarpal\",{\"normalizedVector\":[0.83119,-0.0075741443,-0.55593705],\"to\":{\"name\":\"indexFingerMetacarpal\",\"isTracked\":true,\"position\":[0.027073365,-0.00024670362,-0.018107878]},\"vector\":[0.027073365,-0.00024670362,-0.018107878],\"from\":{\"isTracked\":true,\"name\":\"wrist\",\"position\":[0,0,0]}},\"middleFingerKnuckle\",{\"vector\":[0.06979661,-0.0008577105,0.00043135695],\"normalizedVector\":[0.99990535,-0.01228755,0.0061796145],\"to\":{\"name\":\"middleFingerKnuckle\",\"isTracked\":true,\"position\":[0.09886531,-0.0012815591,-0.0041266363]},\"from\":{\"position\":[0.029068705,-0.00042384863,-0.0045579933],\"name\":\"middleFingerMetacarpal\",\"isTracked\":true}},\"middleFingerIntermediateTip\",{\"to\":{\"isTracked\":true,\"position\":[0.17341062,0.03594384,0.0067659807],\"name\":\"middleFingerIntermediateTip\"},\"from\":{\"position\":[0.14478105,0.0228525,0.0017794468],\"isTracked\":true,\"name\":\"middleFingerIntermediateBase\"},\"vector\":[0.028629571,0.013091339,0.004986534],\"normalizedVector\":[0.89823323,0.41073182,0.1564491]},\"ringFingerKnuckle\",{\"to\":{\"name\":\"ringFingerKnuckle\",\"position\":[0.09641713,0.00010877621,0.018859666],\"isTracked\":true},\"from\":{\"isTracked\":true,\"name\":\"ringFingerMetacarpal\",\"position\":[0.029131092,0.0010114312,0.009171229]},\"normalizedVector\":[0.98970485,-0.013277079,0.14250644],\"vector\":[0.06728604,-0.000902655,0.009688437]},\"indexFingerIntermediateBase\",{\"to\":{\"position\":[0.14114375,0.021780364,-0.018915178],\"name\":\"indexFingerIntermediateBase\",\"isTracked\":true},\"from\":{\"position\":[0.10151033,-0.0010714203,-0.029484246],\"isTracked\":true,\"name\":\"indexFingerKnuckle\"},\"vector\":[0.039633423,0.022851784,0.010569068],\"normalizedVector\":[0.84408295,0.48668018,0.22509208]},\"forearmArm\",{\"from\":{\"name\":\"forearmWrist\",\"isTracked\":true,\"position\":[-4.5634806e-08,-5.9604645e-08,-8.568168e-08]},\"normalizedVector\":[-0.9251365,0.3752667,0.05742324],\"vector\":[-0.26476347,0.10739703,0.016433874],\"to\":{\"name\":\"forearmArm\",\"position\":[-0.26476353,0.10739697,0.016433788],\"isTracked\":true}},\"thumbTip\",{\"from\":{\"position\":[0.09031551,0.020087473,-0.072532184],\"name\":\"thumbIntermediateTip\",\"isTracked\":true},\"vector\":[0.019697152,-0.0007703174,-0.02424696],\"normalizedVector\":[0.6303334,-0.024651118,-0.77593297],\"to\":{\"name\":\"thumbTip\",\"position\":[0.110012665,0.019317156,-0.096779145],\"isTracked\":true}},\"indexFingerKnuckle\",{\"vector\":[0.07443696,-0.00082471664,-0.011376368],\"from\":{\"isTracked\":true,\"position\":[0.027073365,-0.00024670362,-0.018107878],\"name\":\"indexFingerMetacarpal\"},\"to\":{\"name\":\"indexFingerKnuckle\",\"isTracked\":true,\"position\":[0.10151033,-0.0010714203,-0.029484246]},\"normalizedVector\":[0.9884625,-0.010951568,-0.15106894]},\"littleFingerTip\",{\"normalizedVector\":[-0.7564721,-0.6534889,-0.026499229],\"from\":{\"position\":[0.06732582,0.040405843,0.025757967],\"isTracked\":true,\"name\":\"littleFingerIntermediateTip\"},\"vector\":[-0.01468857,-0.012688924,-0.0005145408],\"to\":{\"isTracked\":true,\"position\":[0.052637253,0.02771692,0.025243426],\"name\":\"littleFingerTip\"}},\"littleFingerIntermediateBase\",{\"to\":{\"position\":[0.08681561,0.03626409,0.031153696],\"name\":\"littleFingerIntermediateBase\",\"isTracked\":true},\"normalizedVector\":[0.055583652,0.97686255,-0.20651855],\"vector\":[0.0019714534,0.03464758,-0.0073248465],\"from\":{\"isTracked\":true,\"position\":[0.08484416,0.0016165108,0.038478542],\"name\":\"littleFingerKnuckle\"}}],\"chirality\":\"left\"}"
"""







let rightRaw = """
"{\"chirality\":\"right\",\"allVectors\":[\"middleFingerIntermediateBase\",{\"from\":{\"isTracked\":true,\"name\":\"middleFingerKnuckle\",\"position\":[-0.09866467,-0.0014730557,0.0037117158]},\"normalizedVector\":[-0.9378157,-0.3249634,-0.12206826],\"vector\":[-0.047730282,-0.016539063,-0.006212684],\"to\":{\"name\":\"middleFingerIntermediateBase\",\"isTracked\":true,\"position\":[-0.14639495,-0.01801212,-0.002500968]}},\"ringFingerMetacarpal\",{\"from\":{\"name\":\"wrist\",\"position\":[0,0,0],\"isTracked\":true},\"normalizedVector\":[-0.95025414,-0.07367298,-0.3026374],\"vector\":[-0.0296352,-0.00229761,-0.009438233],\"to\":{\"name\":\"ringFingerMetacarpal\",\"position\":[-0.0296352,-0.00229761,-0.009438233],\"isTracked\":true}},\"littleFingerMetacarpal\",{\"to\":{\"isTracked\":true,\"name\":\"littleFingerMetacarpal\",\"position\":[-0.028484922,-0.004122764,-0.025462672]},\"vector\":[-0.028484922,-0.004122764,-0.025462672],\"from\":{\"position\":[0,0,0],\"name\":\"wrist\",\"isTracked\":true},\"normalizedVector\":[-0.74124825,-0.10728453,-0.6626018]},\"ringFingerKnuckle\",{\"to\":{\"isTracked\":true,\"position\":[-0.09498881,-0.0033267082,-0.019014888],\"name\":\"ringFingerKnuckle\"},\"vector\":[-0.06535361,-0.0010290982,-0.009576654],\"normalizedVector\":[-0.98931336,-0.015578338,-0.14496998],\"from\":{\"isTracked\":true,\"position\":[-0.0296352,-0.00229761,-0.009438233],\"name\":\"ringFingerMetacarpal\"}},\"thumbIntermediateTip\",{\"from\":{\"isTracked\":true,\"name\":\"thumbIntermediateBase\",\"position\":[-0.059848417,-0.017983135,0.06250908]},\"vector\":[-0.030030277,-0.0018851813,0.014820732],\"normalizedVector\":[-0.89531964,-0.056204606,0.44186383],\"to\":{\"position\":[-0.08987869,-0.019868316,0.077329814],\"name\":\"thumbIntermediateTip\",\"isTracked\":true}},\"wrist\",{\"vector\":[-0.2859073,0.036948435,0.0012309563],\"from\":{\"isTracked\":true,\"position\":[0.2859073,-0.036948435,-0.0012309563],\"name\":\"forearmArm\"},\"to\":{\"isTracked\":true,\"name\":\"wrist\",\"position\":[0,0,0]},\"normalizedVector\":[-0.9917437,0.12816523,0.0042698914]},\"littleFingerTip\",{\"to\":{\"position\":[-0.062162984,-0.05232268,-0.017795706],\"isTracked\":true,\"name\":\"littleFingerTip\"},\"from\":{\"name\":\"littleFingerIntermediateTip\",\"position\":[-0.07902845,-0.04762918,-0.022627372],\"isTracked\":true},\"normalizedVector\":[0.92866975,-0.25843987,0.26604792],\"vector\":[0.016865466,-0.004693497,0.004831666]},\"middleFingerTip\",{\"normalizedVector\":[-0.91596514,-0.36820826,-0.15946965],\"from\":{\"isTracked\":true,\"position\":[-0.17459942,-0.031128975,-0.007103173],\"name\":\"middleFingerIntermediateTip\"},\"vector\":[-0.02268222,-0.009118011,-0.003948977],\"to\":{\"name\":\"middleFingerTip\",\"isTracked\":true,\"position\":[-0.19728164,-0.040246986,-0.01105215]}},\"littleFingerIntermediateBase\",{\"from\":{\"position\":[-0.0821725,-0.005062947,-0.039455954],\"name\":\"littleFingerKnuckle\",\"isTracked\":true},\"normalizedVector\":[-0.26949382,-0.91478425,0.30090326],\"vector\":[-0.009316981,-0.03162606,0.010402873],\"to\":{\"isTracked\":true,\"position\":[-0.09148948,-0.03668901,-0.02905308],\"name\":\"littleFingerIntermediateBase\"}},\"indexFingerTip\",{\"to\":{\"isTracked\":true,\"position\":[-0.18884067,-0.03606793,0.008636322],\"name\":\"indexFingerTip\"},\"vector\":[-0.022473708,-0.006858159,-0.0048895683],\"from\":{\"isTracked\":true,\"name\":\"indexFingerIntermediateTip\",\"position\":[-0.16636696,-0.02920977,0.01352589]},\"normalizedVector\":[-0.93639654,-0.2857542,-0.20373029]},\"indexFingerKnuckle\",{\"to\":{\"name\":\"indexFingerKnuckle\",\"position\":[-0.101216674,-0.0011984219,0.028744604],\"isTracked\":true},\"vector\":[-0.073624134,-0.0009272804,0.010490626],\"normalizedVector\":[-0.9899235,-0.012467877,0.14105317],\"from\":{\"name\":\"indexFingerMetacarpal\",\"position\":[-0.027592538,-0.00027114153,0.018253978],\"isTracked\":true}},\"indexFingerIntermediateBase\",{\"to\":{\"position\":[-0.14274512,-0.019695338,0.018966038],\"name\":\"indexFingerIntermediateBase\",\"isTracked\":true},\"from\":{\"name\":\"indexFingerKnuckle\",\"isTracked\":true,\"position\":[-0.101216674,-0.0011984219,0.028744604]},\"normalizedVector\":[-0.89306045,-0.39777225,-0.21028599],\"vector\":[-0.04152845,-0.018496916,-0.009778567]},\"middleFingerKnuckle\",{\"from\":{\"isTracked\":true,\"position\":[-0.029598238,-0.0004964471,0.0044782017],\"name\":\"middleFingerMetacarpal\"},\"vector\":[-0.069066435,-0.0009766086,-0.00076648593],\"to\":{\"name\":\"middleFingerKnuckle\",\"isTracked\":true,\"position\":[-0.09866467,-0.0014730557,0.0037117158]},\"normalizedVector\":[-0.99983853,-0.01413785,-0.011096015]},\"ringFingerIntermediateTip\",{\"normalizedVector\":[-0.8327813,-0.5467699,-0.08670521],\"vector\":[-0.024143383,-0.015851552,-0.0025136936],\"from\":{\"name\":\"ringFingerIntermediateBase\",\"isTracked\":true,\"position\":[-0.13194554,-0.025637591,-0.023536641]},\"to\":{\"name\":\"ringFingerIntermediateTip\",\"isTracked\":true,\"position\":[-0.15608892,-0.041489143,-0.026050335]}},\"middleFingerIntermediateTip\",{\"normalizedVector\":[-0.896975,-0.41714987,-0.146362],\"to\":{\"isTracked\":true,\"position\":[-0.17459942,-0.031128975,-0.007103173],\"name\":\"middleFingerIntermediateTip\"},\"from\":{\"name\":\"middleFingerIntermediateBase\",\"position\":[-0.14639495,-0.01801212,-0.002500968],\"isTracked\":true},\"vector\":[-0.02820447,-0.013116855,-0.004602205]},\"thumbIntermediateBase\",{\"to\":{\"position\":[-0.059848417,-0.017983135,0.06250908],\"isTracked\":true,\"name\":\"thumbIntermediateBase\"},\"vector\":[-0.03422673,-0.0056214295,0.04178635],\"normalizedVector\":[-0.63025403,-0.103513494,0.7694575],\"from\":{\"name\":\"thumbKnuckle\",\"isTracked\":true,\"position\":[-0.025621686,-0.012361705,0.020722732]}},\"ringFingerTip\",{\"normalizedVector\":[-0.88279486,-0.46141323,-0.08815372],\"from\":{\"position\":[-0.15608892,-0.041489143,-0.026050335],\"isTracked\":true,\"name\":\"ringFingerIntermediateTip\"},\"to\":{\"position\":[-0.1770128,-0.052425496,-0.028139742],\"name\":\"ringFingerTip\",\"isTracked\":true},\"vector\":[-0.020923883,-0.010936353,-0.0020894073]},\"forearmArm\",{\"vector\":[0.28590727,-0.036948882,-0.0012310378],\"to\":{\"name\":\"forearmArm\",\"isTracked\":true,\"position\":[0.2859073,-0.036948435,-0.0012309563]},\"normalizedVector\":[0.99174345,-0.12816676,-0.0042701736],\"from\":{\"isTracked\":true,\"name\":\"forearmWrist\",\"position\":[2.6077032e-08,4.4703484e-07,8.1490725e-08]}},\"forearmWrist\",{\"to\":{\"name\":\"forearmWrist\",\"isTracked\":true,\"position\":[2.6077032e-08,4.4703484e-07,8.1490725e-08]},\"from\":{\"isTracked\":true,\"name\":\"forearmArm\",\"position\":[0.2859073,-0.036948435,-0.0012309563]},\"normalizedVector\":[-0.99174345,0.12816676,0.0042701736],\"vector\":[-0.28590727,0.036948882,0.0012310378]},\"thumbKnuckle\",{\"from\":{\"isTracked\":true,\"name\":\"wrist\",\"position\":[0,0,0]},\"vector\":[-0.025621686,-0.012361705,0.020722732],\"normalizedVector\":[-0.72798455,-0.35123098,0.5887914],\"to\":{\"name\":\"thumbKnuckle\",\"isTracked\":true,\"position\":[-0.025621686,-0.012361705,0.020722732]}},\"indexFingerMetacarpal\",{\"to\":{\"isTracked\":true,\"position\":[-0.027592538,-0.00027114153,0.018253978],\"name\":\"indexFingerMetacarpal\"},\"from\":{\"position\":[0,0,0],\"name\":\"wrist\",\"isTracked\":true},\"vector\":[-0.027592538,-0.00027114153,0.018253978],\"normalizedVector\":[-0.8339847,-0.008195255,0.55172664]},\"indexFingerIntermediateTip\",{\"to\":{\"name\":\"indexFingerIntermediateTip\",\"position\":[-0.16636696,-0.02920977,0.01352589],\"isTracked\":true},\"vector\":[-0.023621842,-0.009514432,-0.0054401476],\"from\":{\"name\":\"indexFingerIntermediateBase\",\"isTracked\":true,\"position\":[-0.14274512,-0.019695338,0.018966038]},\"normalizedVector\":[-0.90711707,-0.36536965,-0.2089105]},\"littleFingerKnuckle\",{\"to\":{\"name\":\"littleFingerKnuckle\",\"position\":[-0.0821725,-0.005062947,-0.039455954],\"isTracked\":true},\"vector\":[-0.053687576,-0.0009401832,-0.013993282],\"normalizedVector\":[-0.96753186,-0.016943533,-0.25218025],\"from\":{\"name\":\"littleFingerMetacarpal\",\"isTracked\":true,\"position\":[-0.028484922,-0.004122764,-0.025462672]}},\"thumbTip\",{\"from\":{\"position\":[-0.08987869,-0.019868316,0.077329814],\"isTracked\":true,\"name\":\"thumbIntermediateTip\"},\"to\":{\"name\":\"thumbTip\",\"isTracked\":true,\"position\":[-0.11036989,-0.018113231,0.10105823]},\"vector\":[-0.020491198,0.0017550848,0.023728415],\"normalizedVector\":[-0.6525703,0.055893082,0.75566393]},\"ringFingerIntermediateBase\",{\"from\":{\"isTracked\":true,\"position\":[-0.09498881,-0.0033267082,-0.019014888],\"name\":\"ringFingerKnuckle\"},\"vector\":[-0.036956728,-0.022310883,-0.0045217536],\"to\":{\"isTracked\":true,\"name\":\"ringFingerIntermediateBase\",\"position\":[-0.13194554,-0.025637591,-0.023536641]},\"normalizedVector\":[-0.8514332,-0.5140127,-0.10417511]},\"littleFingerIntermediateTip\",{\"to\":{\"isTracked\":true,\"position\":[-0.07902845,-0.04762918,-0.022627372],\"name\":\"littleFingerIntermediateTip\"},\"vector\":[0.012461029,-0.010940172,0.0064257085],\"normalizedVector\":[0.7007057,-0.6151852,0.36132896],\"from\":{\"isTracked\":true,\"position\":[-0.09148948,-0.03668901,-0.02905308],\"name\":\"littleFingerIntermediateBase\"}},\"middleFingerMetacarpal\",{\"from\":{\"isTracked\":true,\"position\":[0,0,0],\"name\":\"wrist\"},\"vector\":[-0.029598238,-0.0004964471,0.0044782017],\"normalizedVector\":[-0.9886111,-0.016581835,0.14957647],\"to\":{\"name\":\"middleFingerMetacarpal\",\"isTracked\":true,\"position\":[-0.029598238,-0.0004964471,0.0044782017]}}]}"
"""
