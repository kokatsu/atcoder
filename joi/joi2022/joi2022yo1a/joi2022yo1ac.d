import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    auto U = S.sort.uniq.array;

    string res = U.length >= 3 ? "Yes" : "No";
    res.writeln;
}