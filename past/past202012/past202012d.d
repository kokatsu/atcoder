import std;

struct String {
    string origin, value;
    int lead, length;

    this(string x) {
        this.origin = x;
        int l = x.countUntil!"a != '0'".to!int;
        if (l >= 0) {
            this.value = x[l..$];
            this.lead = l;
        }
        else {
            this.lead = x.length.to!int;
        }
        this.length = this.value.length.to!int;
    }

    int opCmp(const String that) const {
        if (this.length != that.length) {
            return this.length - that.length;
        }

        if (this.value != that.value) {
            foreach (x, y; zip(this.value, that.value)) {
                if (x != y) {
                    return x.to!int - y.to!int;
                }
            }
        }

        if (this.lead != that.lead) {
            return that.lead - this.lead;
        }

        return 0;
    }

    string toString() const @safe pure nothrow {
        return this.origin;
    }
}

void main() {
    int N;
    readf("%d\n", N);

    auto S = new String[](N);
    foreach (i; 0 .. N) {
        string T;
        readf("%s\n", T);

        S[i] = String(T);
    }

    S.sort;

    writefln("%(%s\n%)", S);
}