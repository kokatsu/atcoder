import std;

struct Fraction {
    long num;
    long den;
}

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto gold = new Fraction[](N);
    gold[0] = Fraction(1, 1);
    auto silver = new Fraction[](N);
    silver[0] = Fraction(A[0], 1);

    auto u = new int[][](N, 2);
    u[0][1] = 1;
    foreach (i; 1 .. N) {
        gold[i] = gold[i - 1];
        long a = silver[i - 1].num * gold[i].den;
        long b = A[i] * gold[i].num * silver[i - 1].den;
        if (a > b) {
            gold[i] = silver[i - 1];
            gold[i].den *= A[i];
            ++u[i][0];
        }

        silver[i] = silver[i - 1];
        a = A[i] * gold[i].num * silver[i - 1].den;
        b = silver[i - 1].num * gold[i].den;
        if (a > b) {
            silver[i] = gold[i - 1];
            silver[i].num *= A[i];
            ++u[i][1];
        }

        long g = gcd(gold[i].num, silver[i].num);
        gold[i].num /= g;
        silver[i].num /= g;

        g = gcd(gold[i].den, silver[i].den);
        gold[i].den /= g;
        silver[i].den /= g;
    }

    int idx = 1;
    auto v = new int[](N);
    foreach_reverse (i; 0 .. N) {
        if (idx == 0 && u[i][1] == 1) {
            v[i] = 1;
            idx = 1;
        }
        else if (idx == 1 && u[i][0] == 1) {
            v[i] = 1;
            idx = 0;
        }
    }

    foreach (i; 0 .. N) {
        if (i == N - 1) {
            writeln(v[i]);
        }
        else {
            write(v[i], " ");
        }
    }
}
