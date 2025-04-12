import std;

void main() {
    int S;
    readf("%d\n", S);

    string res = S == clamp(S, 200, 299) ? "Success" : "Failure";
    res.writeln;
}
