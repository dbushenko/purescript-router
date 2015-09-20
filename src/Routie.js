"use strict";
// module Routie

exports.redirect = function(path) {
    return function() {
        routie(path);
    };
};

exports.lookup = function(name) {
    return function(obj) {
        return function() {
            return routie.lookup(name, obj);
        };
    };
};


exports.route0 = function(path) {
    return function(func) {
        return function() {
            routie(path, func);
        }
    };
};

exports.route1 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg) {
                func(arg)();
            });
        }
    };
};

exports.route2 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2) {
                func(arg1)(arg2)();
            });
        }
    };
};

exports.route3 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2, arg3) {
                func(arg1)(arg2)(arg3)();
            });
        }
    };
};

exports.route4 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2, arg3, arg4) {
                func(arg1)(arg2)(arg3)(arg4)();
            });
        }
    };
};

exports.route5 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2, arg3, arg4, arg5) {
                func(arg1)(arg2)(arg3)(arg4)(arg5)();
            });
        }
    };
};

exports.route6 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2, arg3, arg4, arg5, arg6) {
                func(arg1)(arg2)(arg3)(arg4)(arg5)(arg6)();
            });
        }
    };
};

exports.route7 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) {
                func(arg1)(arg2)(arg3)(arg4)(arg5)(arg6)(arg7)();
            });
        }
    };
};

exports.route8 = function(path) {
    return function(func) {
        return function() {
            routie(path, function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) {
                func(arg1)(arg2)(arg3)(arg4)(arg5)(arg6)(arg7)(arg8)();
            });
        }
    };
};
