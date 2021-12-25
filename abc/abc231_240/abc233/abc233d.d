import std;
import core.checkedint;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.cumulativeFold!"a + b".array;
    
    long[long] list;
    ++list[0];

    long res;
    foreach (i; 0 .. N) {
        if (B[i] - K in list) {
            res += list[B[i] - K];
        }

        ++list[B[i]];
    }

    res.writeln;
}