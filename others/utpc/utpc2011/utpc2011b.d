import std;

void main() {
    string S;
    readf("%s\n", S);

    auto l = S.length;

    int res;
    foreach (i; 0 .. l/2) {
        if (S[i] == '(') {
            if (S[l-i-1] != ')') ++res;
        }
        else if (S[i] == ')') {
            if (S[l-i-1] != '(') ++res;
        }
        else {
            if (S[i] != S[l-i-1]) ++res;
        }
    }

    if (l % 2 == 1 && (S[l/2] == '(' || S[l/2] == ')')) ++res;

    res.writeln;
}