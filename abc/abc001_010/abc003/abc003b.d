import std;

const string A = "atcoder";

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    bool isOK = true;
    foreach (s, t; zip(S, T)) {
        if (s != t) {
            if (s == '@') isOK &= A.canFind(t);
            else if (t == '@') isOK &= A.canFind(s);
            else isOK = false;
        }
    }

    writeln(isOK ? "You can win" : "You will lose");
}