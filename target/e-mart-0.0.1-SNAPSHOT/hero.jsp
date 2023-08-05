<!-- hero.jsp -->

<section class="hero">
    <div class="hero-content">
        <h1>Welcome to our E-Commerce Grocery Store</h1>
        <p>Discover a wide range of fresh and delicious grocery items at great prices.</p>
        <a href="#products" class="btn btn-primary">Explore Products</a>
    </div>
</section>

<style>
    /* Custom CSS styles for the hero section */
    .hero {
        background-image: url('path/to/your/grocery-items-image.jpg');
        background-size: cover;
        background-position: center;
        min-height: 400px;
        display: flex;
        align-items: center;
        color: #fff;
    }

    .hero-content {
        text-align: center;
    }

    .hero-content h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .hero-content p {
        font-size: 18px;
        margin-bottom: 30px;
    }

    .btn {
        display: inline-block;
        padding: 12px 24px;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        text-decoration: none;
        border-radius: 4px;
    }

    .btn:hover {
        background-color: #0056b3;
    }
</style>
