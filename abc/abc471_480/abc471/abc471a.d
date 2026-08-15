import std;

void main() {
    int A, B;
    readfln("%d %d", A, B);

    bool ok;
    static foreach (op; ["+", "-", "*"]) {
        ok |= mixin("A " ~ op ~ " B") == 9;
    }
    ok |= B * 9 == A;

    string res = ok ? "Nine" : "Nein";
    res.writeln;
}
