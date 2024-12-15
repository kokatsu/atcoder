import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    string res = [A, B, C].isPermutation([5, 7, 5]) ? "YES" : "NO";
    res.writeln;
}
