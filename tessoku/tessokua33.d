import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    writeln(A.fold!"a ^ b" != 0 ? "First" : "Second");
}
