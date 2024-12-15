import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    string res = ([A, B, A + B].any!(x => x % 3 == 0) ? "P" : "Imp") ~ "ossible";
    res.writeln;
}
