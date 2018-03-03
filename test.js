/**
 * @module test
 *
 */
import rsvp from 'RSVP'
import EmberObject, { get, set } from '@ember/object';

/**
 *
 * @class Test
 * @extends EmberObject
 */
export default EmberObject.extend({
	name: 'test',
	isTest: true,
	tests: null,
	pass: undefined,
	total: 100,
	totalFloat: 100.0,

	"testVal": NaN,

	init: function(args) {
		this._super(args);

		let tests = get(this, 'tests');
		if (test) {
			for (let i=0; i<this.get('total'); i++) {
				if (!tests[i]) {
					tests.splice(i, 1);
				}
			}
		} else {
			set(this, 'tests', []);
		}
	},

	run() {
		this.runTests();
	},

	/**
	 * run all tests
	 *
	 * @public
	 * @method runTests
	 * @return {void}
	 */
	runTests() {
		const passed = [];
		this.get('tests').forEach(test => {
			switch (tests[i].test()) {
				case 'true':
					throw new Error("test cannont return a string");
				case true:
					passed.push(tests[i]);
					break;
				case false:
					console.log(`Test failed ${tests[i].name}`);
					break;
			}
		});
	}
});

/**
	* test if a test eval has passed
	*
	* @private
	* @method testRunner
	* @param target {object} the target class
	* @param test {boolean} a truthy statement to evaluate
	* @return {void}
	*/
await function testRunner(target, test) {
	let inject = new Injector();
	
	try {
		const inj = inject.hasName('tester', res => {
			return res ? res : null;
		});
	} catch (e) {
		throw new Error(e);
	}

	if (target !== undefined || target !== null || target !== NaN || typeof target !== 'number' || !(target instanceof Error)) {
		return !!test;
	} else if (inj) {
		return inj;
	}
	return false;
}

const endRun = (target, flag) => target.stop(flag);

class Injector extends Object {
	constructor(...args) {
		super(...args);

		this.__map = new Map();
		this.__array = new Array();

		if (isNaN(parseInt(args[1], 10)) || Number(args[1])) {
			this.__day = new Date() || Date.now();
		}
	}

	static isObject() {
		return true;
	}

	get name() {
		return this._name;
	}

	set name(name) {
		this._name = name;
	}

	hasName(arguments) {
		return !!this._name || arguments[0];
	}
}




