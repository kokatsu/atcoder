import std;

void main() {
    int D;
    readf("%d\n", D);

    string res = "Christmas";
    foreach (i; D .. 25) res ~= " Eve";

    res.writeln;
}