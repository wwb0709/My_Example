//
//  S_CCActions.h
//  TestCocos2dX
//
//  Created by Rolando Abarca on 12/19/11.
//  Copyright (c) 2011 Zynga Inc. All rights reserved.
//

#ifndef TestCocos2dX_S_CCActions_h
#define TestCocos2dX_S_CCActions_h

#include <JavaScriptCore/JavaScriptCore.h>
#include "cocos2d.h"
#include "ScriptingCore.h"

using namespace cocos2d;

class S_CCAction : CCAction
{
	// actions do not have a userData field
	JSObjectRef jsObject;
	
public:
	SCRIPTABLE_BOILERPLATE
	
	S_CCAction() : CCAction() {};
	
	JS_STATIC_FUNC_DEF(jsIsDone);
	JS_STATIC_FUNC_DEF(jsStartWithTarget);
	JS_STATIC_FUNC_DEF(jsStop);
};

class S_CCMoveBy : CCMoveBy
{
	// actions do not have a userData field
	JSObjectRef jsObject;
	
public:
	SCRIPTABLE_BOILERPLATE
	
	S_CCMoveBy() : CCMoveBy() {};	
};

class S_CCSequence : CCSequence
{
public:
	SCRIPTABLE_BOILERPLATE
	
	S_CCSequence() : CCSequence() {};
	
	JS_STATIC_FUNC_DEF(jsActions);
};

class S_CCCallFunc : CCCallFunc, SelectorProtocol
{
	JSObjectRef jsObject;
	JSObjectRef callback;

public:
	SCRIPTABLE_BOILERPLATE
	
	S_CCCallFunc() : CCCallFunc(), jsObject(NULL) {};
	~S_CCCallFunc();
	
	virtual void selectorProtocolRetain();
	virtual void selectorProtocolRelease();
	virtual void callfunc();
};

#endif
