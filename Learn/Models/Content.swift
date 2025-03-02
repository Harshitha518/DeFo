// The content of each tree that is about deforestation is defined in the Content struct.
import SwiftUI
import Foundation

struct Content: Identifiable {
    let id = UUID()
    let heading: String
    let text: String
    let imageUrl: String
    let pageNumber: Int
}
  
extension Content {
    
    static func all() -> [Content] {
        
    return [
        
        Content (
            heading: "What is Deforestation?", 
            text: "Deforestation is when forests are purposely cleared or cut down. Deforestation occurs so frequently, and we are destroying Earth. Contradicting common beliefs, deforestation is not a modern issue and has been a problem for 1,000 years. We have lost more than ⅓ of our forests, and half of this loss has occurred just in the last century. Furthermore, the UN’s Food and Agriculture Organization estimates the rate of deforestation to be 1.3 million km2 per decade! This shows the seriousness of this problem, as it has been accelerating intensely. Trees are important because they help produce oxygen, clean the air we breathe, and provide homes for animals. Deforestation is a big problem because it can harm the environment and the animals that live in the forest.",
            imageUrl: "DeforestationImage1", 
            pageNumber: 0),
        Content (
            heading: "Where is it Occuring?", 
            text: "There isn’t one place that can be pinpointed and said to be facing deforestation. Deforestation is a global problem, happening in every single continent. But, deforestation is most prominent in tropical rainforests. The Amazon rainforest, Indonesia Borneo, and Africa have been affected the most by deforestation. The biggest rainforest in the world is the Amazon rainforest. Yet, 20% of the rainforest has been destroyed, just in the last fifty years! Indonesia and Borneo, containing some of the most biodiverse forests, are also going through high levels of deforestation, and are being rapidly destroyed. Since 1990, they have lost 24 million hectares of forest land. The forests in Africa are being cut down, and this is a great example of how deforestation can affect animals. Many of them are in danger of going extinct. Sadly, there are more places that are experiencing a great amount of deforestation as well. For example, although more and more people are trying to slow down deforestation and protect forests in places such as North America and Europe, an alarming amount of trees are still being cut down. In North America, places such as California are experiencing wildfires, making it difficult to protect forests.",
            imageUrl: "DeforestationImage2",
            pageNumber: 1),
        Content (
            heading: "Why is it Occuring?", 
            text: "Deforestation happens for many reasons. Sometimes people cut down trees to make space for farms or to build houses.  There is a method called slash-and-burn farming and it has been used for the past 12,000 years. Farmers burn lots of trees which creates fertile soil to grow crops. The problem is that soil only stays fertile for a few years, so they have to repeat the process many times. Farmers also clear out land for the grazing of animals. Apparently, agricultural-related activities has led to 80% of the deforestation. Sometimes companies cut down trees to make products like paper, furniture, and other things we use every day. Many major companies such as Cargill, Walmart, IKEA, Starbucks, and McDonald's use an  excessive amount of things like palm oil, pulp and paper, timber, beef, soy, and cocoa in their products. To acquire these products, so many trees are cut down every day. Mining companies also play a major part in deforestation. It has led to more than 10% of the deforestation in the Amazon! Most importantly, urbanization, or the process of turning rural areas into cities, has caused the most deforestation. Just between 1992 and 2015 more than 35 hectares of land have been cleared out just for this reason. Sometimes, humans aren’t the cause of deforestation. Forest fires and parasite-caused diseases lead to deforestation as well.",
            imageUrl: "DeforestationImage3", 
            pageNumber: 2),
        Content (
            heading: "Who/What is it Affecting?",
            text: "When people think about deforestation, they think about all the trees that are cut down, but many people don’t realize what all deforestation can affect. Deforestation is affecting a huge number of animals. When forests are being logged or burned, the animals living there are in danger of going into extinction. This threatens the world's biodiversity, and scientists say we are in the midst of a mass extinction episode. The majority of the Earth's land animals and plants live in forests. Trees provide these animals with shelter, shade, and food. With fewer and fewer trees, animals such as Orangutans, Elephants, Indonesian Tigers, and reptiles are under a great chance of extinction. Deforestation also significantly affects the climate. When forests are cut down and destroyed, a lot of carbon dioxide is released into the universe, which contributes to global warming, another major environmental problem. Trees are essential to absorb carbon dioxide and produce oxygen. Hence, when they are cut down, the carbon dioxide they have accumulated is released. This contributes to the greenhouse effect and, ultimately, global warming. Soil erosion is another significant impact of deforestation. Deforestation leaves the soil more prone to erosion. This is when soil or rocks are broken down by wind, ice, or water. According to National Geographic, this causes the remaining plants to become more vulnerable to fires as the forest shifts from being a closed, moist environment to an open, dry one. Soil erosion can also harm the food we are eating since a lot of this land is used to grow food. Deforestation is also the lives of millions of people. Forests support the livelihoods of 1.6 billion people globally, and one billion of these are the world's poorest people. This means many people depend on forests for survival. But in developing countries such as Borneo, Indonesia, Vietnam, Brazil, and Mexico, land tenure systems are weak. This means big businesses can easily get these lands and use them to their advantage, disrupting and ruining the local people's habitat. Clearly, deforestation is affecting humans, the environment, and many more.",
            imageUrl: "DeforestationImage4",
            pageNumber: 3)
        ]
    }
    
}
