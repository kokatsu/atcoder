import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto cnt4 = a.count!(x => x % 4 == 0);
    auto cnt2 = a.count!(x => x % 4 != 0 && x % 2 == 0);

    string res = (cnt4 >= min(N, N - cnt2 + 1) / 2) ? "Yes" : "No";
    res.writeln;
}
