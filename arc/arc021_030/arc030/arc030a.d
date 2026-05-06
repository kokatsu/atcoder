import std;

void main() {
    int n, k;
    readfln("%d", n);
    readfln("%d", k);

    string res = n / 2 >= k ? "YES" : "NO";
    res.writeln;
}
