# NLPChef

## Abstract
The goal of this project is to create a NLP cooking model that can take a list of available ingredients and generate a recipe based on those ingredients.
We started the model development off by applying GPT-2 models to cooking context sequences, which all proved rather skillful. However, we quickly moved away from GPT-2, as we wanted more control over the model format and the data it is trained on. Thus, we downloaded a large recipe dataset and trained our own model, which can recognize recipes in a Ingredients: text Instructions: text shape. Using this model, we can generate a recipe with only a list of ingredients as input.

## Research Objective
To create a model that can help you figure out what to eat based on what's in your fridge

## Dataset
[eightportions.com](https://eightportions.com/datasets/Recipes/#fn:1)

## Repository map:
The main repository directory contains most files. The main project development can be found in Notebook.ipynb, or alternatively Notebook.html. The data we used for our model development are the three recipes_raw_nosource.json files. These files are then converted into TrainingData.txt and TestData.txt, which are used to train and develop our model. Our custom model itself is created using run_experiments.sh and run_lm_finetuning on the converted datasets in Google Colab. Our model that is trained from this can be found in the CustomModel directory. One file in this directory was too large to upload to github, so the entire custom model data can be found [here](https://1drv.ms/u/s!AlUeI82AcSLCo41KNfOUS5dTqT0tEQ?e=4Wyq21). Finally, the recipes directory contains some examples of recipes our model has created. FirstRecipe.txt is created with GPT-2, and AllRecipes.txt are made by our own Ingredient-based model, by only giving it the corresponding ingredients. The report paper accompanying this project can be found in Report_NLPChef.pdf. Additionally, all data used to train our own model can be found in the ModelBuilding directory.

