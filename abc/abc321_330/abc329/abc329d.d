import std;

struct Candidate {
    int id, votes;

    int opCmp(const Candidate that) const {
        if (this.votes == that.votes) {
            return this.id - that.id;
        }
        else {
            return that.votes - this.votes;
        }
    }
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto rbt = new RedBlackTree!(Candidate, "a < b")();
    foreach (i, a; A) {
        rbt.insert(Candidate(i.to!int + 1, 0));
    }

    auto V = new int[](N + 1);
    foreach (a; A) {
        rbt.removeKey(Candidate(a, V[a]));
        ++V[a];
        rbt.insert(Candidate(a, V[a]));

        int res = rbt.front.id;
        res.writeln;
    }
}
