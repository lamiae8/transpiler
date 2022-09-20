/* This is a specialized implementation of the listener based on
 * ALFABaseListener class. It contains the translator's components and the
 * translation process logic. 
 */

#include <antlr4-runtime.h>
#include "ALFABaseListener.h"
#include "ALFAParser.h"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include "OutputClasses.h"



using namespace std;


class Listener : public ALFABaseListener {
	public:
	
	/* Constructor/Destructor */
	Listener(ALFAParser* p, string f) : outputFile(f, ios::out), boolCount(0), oldContractsCount(0), newContractsCount(0), namespaceCount(0), translateAttribute(false), modifier(true), ruleCount(0) {
	
		parser = new ALFAParser(p->getTokenStream());
		
		if (outputFile.is_open()) cout << "# output file loaded successfuly" << endl;
		else cout << "# Could not load output file\n# Creating a new one ..." << endl;
		
		output = "" ;
		contracts.push_back(output);
		generalDeclarations = "";
		
	}
	
	~Listener() {
		delete parser;
	}
	

public:	
	/* BaseListener inherited functions */ 
  	virtual void enterTranslationunit(ALFAParser::TranslationunitContext *ctx) {
  		cout << " enterTranslationUnit " << endl;
  		
  	}
  	
  	virtual void exitTranslationunit(ALFAParser::TranslationunitContext *ctx) {
  		cout << " exitTranslationUnit " << endl;
  	
  		
		for (string str : contracts) {
			output += str;
			cout << str << "\nend\n " <<  endl;}
		
		
		
		output += "\n\n\n // End of translation";	
		
  		outputFile << output ;
  	
  		outputFile.close();
 	}

  	virtual void enterDeclarationseq(ALFAParser::DeclarationseqContext *ctx) {
  			cout << " enterDeclarationSeq " << endl;
  			
  	}
  	
  	virtual void exitDeclarationseq(ALFAParser::DeclarationseqContext *ctx) {
  		cout << " exitDeclarationSeq " << endl;

  	}

  	virtual void enterNamespaceDefinition(ALFAParser::NamespaceDefinitionContext *ctx) {
  		cout << " enterNamespaceDefinition " << endl;
  		
  		if(namespaceCount == 0 ) Output.indentCount++;
  		namespaceCount++;
  		
  		if (!(ctx->attributeDefinition()).empty()) {
  			
  			translateAttribute = true;
  			contracts[newContractsCount] += Output.indent() + "constructor () public { \n"; 
  			
  			for (auto attribute : ctx->attributeDefinition()) 
  				attribute->enterRule(this);
  			
  			contracts[newContractsCount] += "\n" + Output.indent() + "}\n\n";
  			
  			translateAttribute = false;
  		}
  		
  	}
  	
  	virtual void exitNamespaceDefinition(ALFAParser::NamespaceDefinitionContext *ctx) {
  		cout << " exitNamespaceDefinition " << endl;
  		
  		namespaceCount -= 1;
  		
  		if (namespaceCount == 0) {
  		
  			string namespaceName = "";
  			string currentOutput = contracts[0];
  			Output.indentCount = 0;
  			
			contracts[0] = Output.indent() + "// SPDX-License-Identifier: GPL-3.0\n\n " + "pragma solidity >=0.7.0 <0.9.0; // What compiler to use\n\n";
			
  			if(ctx->WORD()) namespaceName = (ctx->WORD())->toString();
  			else namespaceName = "main";
  			
  			contracts[0] += Output.indent() + "contract " + namespaceName + " {\n";
  
  			Output.indentCount++;
  			
  			contracts[0] += Output.indent() + generalDeclarations;
  			
  			for( string str : contractsNames) {
  				contracts[0] += Output.indent() + str;
  				str[0] = tolower(str[0]);
  				contracts[0] += " " + str + " ;\n\n";
  			}
  			
  			Output.indentCount = 1;
  			contracts[0] +=  currentOutput + "\n}\n\n" ;
 
  		}
  		
  	}

  	virtual void enterPolicysetDefinition(ALFAParser::PolicysetDefinitionContext *ctx) {
  	
  		cout << " enterPolicysetDefinition " << endl;
  		oldContractsCount = newContractsCount;
  		Output.indentCount = 0;
  		output = "";
  		contracts.push_back(output);
  		newContractsCount = contracts.size() - 1;	
  			  	
  	/* ---------------------------------------------------------------------------------------------------------------------------*/
  
  		/* Collecting the policyset name :
	  	*
	  	* For example 
	  	* 	policyset test {
	  	*		...
	  	*		...
	  	*	}
		* 
		* the policysetName string will contain "test".
		*
		*/
		
  		string policysetName = "";
  		if(ctx->WORD()) policysetName = (ctx->WORD())->toString() ;
  		else policysetName = "contract" + to_string(newContractsCount);
  		
  		policysetName[0] = toupper(policysetName[0]); // to make the first character upper case
  		
  		contractsNames.push_back(policysetName);
  		
  		if (newContractsCount > 1 ) {
  			contracts[oldContractsCount] += "\t" + policysetName + " ";
  		 	policysetName[0] = tolower(policysetName[0]) ;
  		 	contracts[oldContractsCount] += policysetName + ";\n\n" ;
  		 }
  		
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	  
  	  	/* translating the code */
  	  	
  	  	contracts[newContractsCount] += "contract " + policysetName + " {\n" ;
  	  	Output.indentCount++;
  	  	
	/* ---------------------------------------------------------------------------------------------------------------------------*/

  	}
  	
  	virtual void exitPolicysetDefinition(ALFAParser::PolicysetDefinitionContext *ctx) {
  		cout << " exitPolicysetDefinition " << endl;

		
		contracts[newContractsCount] += "\n}\n";
  		newContractsCount = oldContractsCount ;
  	}

  	virtual void enterPolicyDefinition(ALFAParser::PolicyDefinitionContext *ctx) {
  		cout << " enterPolicyDefinition " << endl;
  		  	
  		Output.indentCount = 0;
  		output = "";
  		oldContractsCount = newContractsCount;
  		output = "";
  		contracts.push_back(output);
  		newContractsCount = contracts.size() - 1;
  	/* ---------------------------------------------------------------------------------------------------------------------------*/
  
  		/* Collecting the policy name :
	  	*
	  	* For example 
	  	* 	policy test {
	  	*		...
	  	*		...
	  	*	}
		* 
		* the policyName string will contain "test".
		*
		*/
		string policyName = "";
		
		if (ctx->WORD()) policyName = (ctx->WORD())->toString();
  		else policyName = "contract" + to_string(newContractsCount) ;
  		
  		policyName[0] = toupper(policyName[0]); // to make the first character upper case
  		  		
  		contractsNames.push_back(policyName);
  		
  		if (newContractsCount > 1 ) {
  			contracts[oldContractsCount] += "\t" + policyName + " ";
  		 	policyName[0] = tolower(policyName[0]);
  		 	contracts[oldContractsCount] += policyName + ";\n\n" ;
  		 }
  		
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	 	/* translating the code */
  	  	
  	  	contracts[newContractsCount] += Output.indent() + "contract " + policyName + " {\n" ;
  	  	Output.indentCount++;
  	  	output += "\n";
  	  	
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	}
  	
  	virtual void exitPolicyDefinition(ALFAParser::PolicyDefinitionContext *ctx) {
  		cout << " exitPolicyDefinition " << endl;
 
 
 		
  		contracts[newContractsCount] +=  "\n}\n";
  		
  		newContractsCount = oldContractsCount ;
  	}

  	virtual void enterRuleDefinition(ALFAParser::RuleDefinitionContext *ctx) {
  		cout << " enterRuleDefinition " << endl;
  		
  		modifier = false;
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  
  		/* Collecting the rule name :
	  	*
	  	* For example 
	  	* 	rule test {
	  	*		...
	  	*		...
	  	*	}
		* 
		* the ruleName string will contain "test".
		*
		*/
		
  		string ruleName = "";
  		if(ctx->WORD()) ruleName = (ctx->WORD())->toString();
  		else {
  			ruleCount++;
  			ruleName = "func" + to_string(ruleCount);
  		}
  			
  		
  		/// Retrieving the variables used inside of the rule
  		
  		vector <vector<string> > varNames;
  		
  		if(!ctx->conditionDefinition().empty() ) {
  			for (auto condition : ctx->conditionDefinition() ) {
  				if(!condition->condition().empty()) {
  					for(auto cond : condition->condition()) {
   						if(!cond->booleenExpression().empty()) {
  							auto booleen = cond->booleenExpression();
  							while(!booleen.empty()) {
							
	  							vector <string> varName;
	  							varName.push_back((booleen[0]->TARGETRESSOURCE())->toString());
	  							if(varName[0][varName.size() -1] == '.') varName[0].pop_back();
	  							
	  							if((booleen[0]->value())->STRING()) varName.push_back("string");
	  							else if((booleen[0]->value())->NUMBER()) varName.push_back("uint256");
	  							else if((booleen[0]->value())->BOOL()) varName.push_back("bool");
	  							
	  							varNames.push_back(varName);			
							
  								booleen = booleen[0]->booleenExpression();
  							}
  						}
 						
  					}
  				}
  			}
  		}
  		
  		if(!ctx->targetDefinition().empty() ) {
  			for (auto target : ctx->targetDefinition() ) {
  				auto clause = target->clauseDefinition();
  				if(clause) {
  					if(!clause->booleenExpression().empty()) {
  						auto booleen = clause->booleenExpression();
  						while(!booleen.empty()) {
							
	  						vector <string> varName;
	  						varName.push_back((booleen[0]->TARGETRESSOURCE())->toString());
	  						if(varName[0][varName.size() - 1] == '.') varName[0].pop_back();
	  							
	  						if((booleen[0]->value())->STRING()) varName.push_back("string");
	  						else if((booleen[0]->value())->NUMBER()) varName.push_back("uint256");
	  						else if((booleen[0]->value())->BOOL()) varName.push_back("bool");
	  							
	  						varNames.push_back(varName);			
							
  							booleen = booleen[0]->booleenExpression();
  						}
  					}
  				}
  			}
  		}
  		
  		
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	  
  	  	/* translating the code */
  	  	
  	  	contracts[newContractsCount] += Output.indent() + "function " + ruleName + " (";
  	  	bool erase = false;
  	  	for (auto vec : varNames) {
  	  		erase = true;
  	  		if(vec[0][vec[0].size() - 1] == '.' ) vec[0].pop_back();
  	  		contracts[newContractsCount] += vec[1] + " memory " + vec[0] + ",";
  	  	}
  	  	if(erase) contracts[newContractsCount].pop_back();
  	  	contracts[newContractsCount] += ") public payable returns (bool) {" ;
  	  	Output.indentCount += 1;
  	  	contracts[newContractsCount] += "\n";
  	  	
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	}
  	
  	virtual void exitRuleDefinition(ALFAParser::RuleDefinitionContext *ctx) {
  		cout << " exitRuleDefinition " << endl;
  		
  		Output.indentCount = Output.indentCount - 1 ;
  		contracts[newContractsCount] += "\n" + Output.indent() + "}\n\n";
  		modifier = true;
  		
  	}

  	virtual void enterOnBlock(ALFAParser::OnBlockContext *ctx) {
  		cout << " enterOnBlock " << endl;
  	}
  	
  	virtual void exitOnBlock(ALFAParser::OnBlockContext *ctx) {
  		cout << " exitOnBlock " << endl;
  	}

  	virtual void enterOnPermitBlock(ALFAParser::OnPermitBlockContext *ctx) {
  		cout << " enterOnPermitBlock " << endl;
 	}
 	
  	virtual void exitOnPermitBlock(ALFAParser::OnPermitBlockContext *ctx) {
  		cout << " exitOnPermitBlock " << endl;
  	}

  	virtual void enterOnDenyBlock(ALFAParser::OnDenyBlockContext *ctx) {
  		cout << " enterOnDenyBlock " << endl;
  	}
  	
  	virtual void exitOnDenyBlock(ALFAParser::OnDenyBlockContext *ctx) {
  		cout << " exitOnDenyBlock " << endl;
  	}

  	virtual void enterTargetDefinition(ALFAParser::TargetDefinitionContext *ctx) {
  		cout << " enterTargetDefinition " << endl;
  		
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  
  		/* Collecting the target clause definition :
	  	*
	  	* For example 
	  	*
	  	* 	target clause test. == "read"
		*
		* 
		* the targetRessource string will contain the value 'test',
		* and the targetValue string will contain 'read'.
		*
		*
		*
		* !!! PS : !!!
		* 1- a target clause definition with multiple clause definitions will not be interpreted
		* 	for example : target clause test. == "read" and rest. != "write"
		* 	only the first clause will be translated.
		* 
		* 2 - incomplete target clause definitions like : target clause , 
		*	will result in an empty 'require()' solidity block.
		*
		*/
		
  		vector <string> targetRessource;
		
		if(modifier) {
			if(!((ctx->clauseDefinition())->booleenExpression()).empty()) {
				auto booleen = ctx->clauseDefinition()->booleenExpression() ;
				while(!booleen.empty()){
					string target = booleen[0]->TARGETRESSOURCE()->toString();
					
				//remove the '.' added for targets to be parsed by antlr
					if (target[target.size() -1 ] == '.') target.pop_back(); 
				
					targetRessource.push_back(target);
					booleen = booleen[0]->booleenExpression();
				}
  			} 
  		}
  		
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	  
  	  	/* translating the code */
  	  	if(modifier) {
			contracts[newContractsCount] += "\n" + Output.indent() + "modifier f(";
		
			for (auto str : targetRessource) {
				contracts[newContractsCount] += "string memory " + str + " ,";
			}
		
			contracts[newContractsCount].pop_back();
			contracts[newContractsCount] += ") {\n";
			Output.indentCount++;
		}
		
		

	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	}
  	
  	virtual void exitTargetDefinition(ALFAParser::TargetDefinitionContext *ctx) {
  		cout << " exitTargetDefinition " << endl;
  	
  		if(modifier) {
  			contracts[newContractsCount] += Output.indent() + "_;\n";
  			Output.indentCount -= 1;
  			contracts[newContractsCount] += Output.indent() + "}\n\n";
  		}

  	}

  	virtual void enterClauseDefinition(ALFAParser::ClauseDefinitionContext *ctx) {
  	
  		contracts[newContractsCount] += Output.indent() + "require (" ;
  		cout << " enterClauseDefinition " << endl;
  		
  		
  	}
 	virtual void exitClauseDefinition(ALFAParser::ClauseDefinitionContext *ctx) {
  		cout << " exitClauseDefinition " << endl;
  		contracts[newContractsCount] += " );\n"; 
  	}

  	virtual void enterBooleenExpression(ALFAParser::BooleenExpressionContext *ctx) {
  		cout << " enterBooleenExpression " << endl;
  		
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  
  		/* Collecting the booleen expression definition :
	  	*
	  	* For example 
	  	*
	  	* 	condition resourceId.owner == "requestorId"
	  	*	target clause actionType. == "read"
		*	...
		* 
		*
		* the expressions that contain a booleen expression, will be translated
		* into a require solidity block
		*
		*
		*
		* PS :
		*	the parenthesis opening and closing mechanism might not be
		*	precise in some cases.
		*
		*
		*/
		
		string targetRessource;
		string compare;
		string value;
		
		targetRessource = (ctx->TARGETRESSOURCE())->toString();
		if(targetRessource[targetRessource.size() - 1] == '.' ) targetRessource.pop_back();
		
		compare = (ctx->COMPARE())->toString();
		if((ctx->value())->STRING())
			value = ((ctx->value())->STRING())->toString();
		else if((ctx->value())->NUMBER())
			value = ((ctx->value())->NUMBER())->toString();
		else if((ctx->value())->BOOL())
			value = ((ctx->value())->BOOL())->toString();
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	  
  	  	/* translating the code */
  	  	
  	  	if(!((ctx->NOT()).empty())) contracts[newContractsCount] += " !" ;
  	  	if(!((ctx->RIGHTPAREN()).empty())) contracts[newContractsCount] += " ( ";
  	  	
  	  	// The following if-else statement is to add the "Sha3()" block for string comparison
  	  	if((ctx->value())->STRING()) 
  	  		contracts[newContractsCount] += "sha256(abi.encode(" + targetRessource + ")) " + compare + " sha256(" + value + ")";
  	  	else contracts[newContractsCount] += targetRessource + " " + compare + " " + value ;
  	  	
  	  	// end of sha3
  	  	
  	  	boolCount++;
  	  	
  	  	if(!((ctx->LEFTPAREN()).empty())) contracts[newContractsCount] += " ) ";
  	  	
	  	if(!((ctx->lAND()).empty()) && boolCount > 0) contracts[newContractsCount] += " && " ;
		if(!((ctx->lOR()).empty()) && boolCount > 0) contracts[newContractsCount] += " || " ;
  		
		
  	  	
	/* ---------------------------------------------------------------------------------------------------------------------------*/
  	}
  	virtual void exitBooleenExpression(ALFAParser::BooleenExpressionContext *ctx) {
  		cout << " exitBooleenExpression " << endl;
  		if(!((ctx->LEFTPAREN()).empty())) contracts[newContractsCount] += " ) ";
  		boolCount = 0 ;
  	}

  	virtual void enterConditionDefinition(ALFAParser::ConditionDefinitionContext *ctx) {
  		cout << " enterConditionDefinition " << endl;
  		
  		contracts[newContractsCount] += Output.indent() + "require (" ;
  		
  	}
  	
  	virtual void exitConditionDefinition(ALFAParser::ConditionDefinitionContext *ctx) {
  		cout << " exitConditionDefinition " << endl;
  		
  		contracts[newContractsCount] += " );\n"; 
  	}

  	virtual void enterCondition(ALFAParser::ConditionContext *ctx) {
  		cout << " enterCondition " << endl;
  		
  		/* the following loop is to balance the parenthesis */
  		for (auto paren : ctx->RIGHTPAREN()) {
  			contracts[newContractsCount] += paren->toString();
  		}
  	}
  	
  	virtual void exitCondition(ALFAParser::ConditionContext *ctx) {
  		cout << " exitCondition " << endl;
  		
  		/* the following loop is to balance the parenthesis */
  		for (auto paren : ctx->LEFTPAREN()) {
  			contracts[newContractsCount] += ")";
  		}
  		
  	}


  	virtual void enterImportDefinition(ALFAParser::ImportDefinitionContext *ctx) {
  		cout << " enterImportDefinition " << endl;
  	}
  	
  	virtual void exitImportDefinition(ALFAParser::ImportDefinitionContext *ctx) {
  		cout << " exitImportDefinition " << endl;
  	}

  	virtual void enterPermitdeny(ALFAParser::PermitdenyContext *ctx) {
  		cout << " enterPermitdeny " << endl;
  		
  		contracts[newContractsCount] += Output.indent() + "return ";
  		if (ctx->PERMIT()) contracts[newContractsCount] += "true;";
  		else contracts[newContractsCount] += "false;";
		
  		
  	}
  	
  	virtual void exitPermitdeny(ALFAParser::PermitdenyContext *ctx) {
  		cout << " exitPermitdeny " << endl;
  	}

  	virtual void enterCombiningAlgorithm(ALFAParser::CombiningAlgorithmContext *ctx) {
  		cout << " enterCombiningAlgorithm " << endl;
  	}
  	
  	virtual void exitCombiningAlgorithm(ALFAParser::CombiningAlgorithmContext *ctx) {
  		cout << " exitCombiningAlgorithm " << endl;
  	}

  	virtual void enterAdviceDefinition(ALFAParser::AdviceDefinitionContext *ctx) {
  		cout << " enterAdviceDefinition " << endl;
  	}
  	
  	virtual void exitAdviceDefinition(ALFAParser::AdviceDefinitionContext *ctx) {
  		cout << " exitAdviceDefinition " << endl;
  	}

  	virtual void enterObligationDefinition(ALFAParser::ObligationDefinitionContext *ctx) {
  		cout << " enterObligationDefinition " << endl;
  	}
  	
  	virtual void exitObligationDefinition(ALFAParser::ObligationDefinitionContext *ctx) {
  		cout << " exitObligationDefinition " << endl;
  	}

  	virtual void enterAttributeDefinition(ALFAParser::AttributeDefinitionContext *ctx) {
		cout << " enterAttributeDefinition " << endl;
	
  	if(translateAttribute) {	
  		
  	/* ---------------------------------------------------------------------------------------------------------------------------*/
  
  		/* Collecting the identifiers and their values 
	  	*
	  	* For example 
	  	* 	attribute actionType {
		*        id = "urn:oasis:names:tc:xacml:1.0:action:action-type"
		*        type = "string"
		*        category = "actionCat"
		* 	}	
		* the attributeName string will contain "actionType",
		* the identifiers vector will contain ["id", "type", "category"], 
		* while the values vector will contain [""urn:oasis:names:tc:xacml:1.0:action:action-type", "string", "actionCat"].
		*
		*/
	
	  	vector<string> identifiers;
	  	vector<string> values;
	  	string attributeName;
	  	
	  	
	  	attributeName = (ctx->WORD())->toString();
	  	
	  	if (ctx->getRuleIndex() != 0) {
	  		for (auto id : ctx->IDENTIFIERS()) {
	  			identifiers.push_back(id->toString());
	  		} 
	  		
	  		for (auto id : ctx->value()) {
	  			values.push_back((id->STRING())->toString());
	  		} 
	  	}
	  	
	/* ---------------------------------------------------------------------------------------------------------------------------*/
		/* Attribute Definition translation */
	
		generalDeclarations += "\n" + Output.getAttributeStruct() + "\n";
		
		
		contracts[newContractsCount] += Output.indent() + "\tattribute memory " + attributeName + " ;\n" ;
	
		for (int i=0; i< 3; i++) {
			contracts[newContractsCount] += Output.indent() + "\t" + attributeName + "." + identifiers[i]+ "_" + " = " + values[i] + " ;\n";
		}
		
		/* Cleaning the vectors for further use */
		identifiers.clear();
		values.clear();
		
	  	contracts[newContractsCount] += "\n";
	  	
	/* ---------------------------------------------------------------------------------------------------------------------------*/
		}
	}
	  
	  virtual void exitAttributeDefinition(ALFAParser::AttributeDefinitionContext *ctx) {
	  	cout << " exitAttributeDefinition " << endl;
	  }

private :
		
	ALFAParser* parser;
	OutputClasses Output;
	ofstream outputFile;
	
	vector<string> contracts;
	vector<string> contractsNames;
	
	string output;
	string generalDeclarations;
	
	int oldContractsCount;
	int newContractsCount;
	int namespaceCount;
	int boolCount;
	int ruleCount;
	
	bool translateAttribute;
	bool modifier;

	
};
