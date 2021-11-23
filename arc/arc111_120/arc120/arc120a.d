import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto S = A.cumulativeFold!"a + b".cumulativeFold!"a + b".array;
    auto M = A.cumulativeFold!max.array;

    foreach (i; 0 .. N) {
        writeln(S[i]+(i+1)*M[i]);
    }
}