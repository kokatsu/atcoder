import std;

void main() {
    string S;
    readfln("%s", S);

    string res = "No";
    if (S.front == S.back) {
        res = "Yes";
    }

    res.writeln;
}
