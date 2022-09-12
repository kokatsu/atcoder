import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    auto res = new int[](N);
    foreach (a; A) ++res[a];

    foreach (r; res) r.writeln;
}