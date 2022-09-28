import std;

void main() {
    int H, N;
    readf("%d %d\n", H, N);

    auto A = readln.chomp.split.to!(int[]);

    int S = A.sum;

    writeln(S >= H ? "Yes" : "No");
}