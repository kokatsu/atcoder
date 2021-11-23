import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto num = iota(1, N+1).array;
    zip(A, num).sort!"a[0] > b[0]";
    
    num[1].writeln;
}