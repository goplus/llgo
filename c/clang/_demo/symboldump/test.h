#ifndef ZOO_H
#define ZOO_H

namespace forest
{

class Bear
{
  public:
    void roar();
    int eat(int berries, int fish);
    void sleep(const char *where);
};

} // namespace forest

namespace ocean
{

class Shark
{
  public:
    void roar();
    int eat(int fish, int seals);
    void sleep(const char *where);
};

} // namespace ocean

class Eagle
{
  public:
    void roar();
    int eat(int mice, int fish);
    void sleep(const char *where);
};

void zookeeper(int money);

#endif // ZOO_H